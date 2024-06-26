#include <pic.h>
#include <htc.h>
#include <stdlib.h>
#include "FMX-DBV.h"
#include "UART_routines.h"

__CONFIG (FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_ON & BOREN_ON & LVP_OFF & CPD_OFF & CP_OFF);

void Task_1_100ms(void)
{
	unsigned char data;
	unsigned char currAddr;
	unsigned char i;
	unsigned int chksum;

   	if(Rx_complete)
    {
		RCIE = 0;
        switch(Rxdata[2])
        {
         	case 0x16:
        	{
				if(Rxdata[1] == 15)
				{
            		//Set speed limit parameters
					eeprom_write(VEHV_SPDLIM_ADDR,		Rxdata[3]);
					VehV_vLim = 						Rxdata[3];
					eeprom_write(VEHV_TIREF_HB_ADDR, 	Rxdata[4]);
			       	eeprom_write(VEHV_TIREF_LB_ADDR, 	Rxdata[5]);
					VehV_tiSig  =                       (Rxdata[4] << 8) + Rxdata[5];
					eeprom_write(SPD_REF_ADDR,          Rxdata[6]);
					VehV_vRef	=						Rxdata[6];  
            		eeprom_write(VEHV_DLY_ADDR,	 		Rxdata[7]);
					VehSpd_numDly = 					Rxdata[7];

        			switch(VehSpd_numDly)
        			{
			         	case 0x00:
        				{
							VehSpd_ctDlyThres = 0;	
        				}
        				break;

			         	case 0x01:
        				{
							VehSpd_ctDlyThres = 20;	
        				}
        				break;

						case 0x02:
	        			{
							VehSpd_ctDlyThres = 40;	
	        			}
	        			break;

				        case 0x03:
	        			{
							VehSpd_ctDlyThres = 120;	
	        			}
	        			break;

				        case 0x04:
	        			{
							VehSpd_ctDlyThres = 240;	
	        			}
	        			break;

				        case 0x05:
	        			{
							VehSpd_ctDlyThres = 360;	
	        			}
	        			break;

				        case 0x06:
	        			{
							VehSpd_ctDlyThres = 480;	
	        			}
	        			break;

				        case 0x07:
	        			{
							VehSpd_ctDlyThres = 600;	
	        			}
	        			break;

				        case 0x08:
	        			{
							VehSpd_ctDlyThres = 720;	
	        			}
	        			break;

				        case 0x09:
	        			{
							VehSpd_ctDlyThres = 840;	
	        			}
	        			break;

				        case 0x0A:
	        			{
							VehSpd_ctDlyThres = 960;	
	        			}
	        			break;

				        case 0x0B:
	        			{
							VehSpd_ctDlyThres = 1080;	
	        			}
	        			break;

	     	    		default:
	        			{
							VehSpd_ctDlyThres = 1200;	
	        			}
	        			break;
					}

					currAddr = SID_INFO_ADDR;
					for(i = 8; i < 16 ; i++)
					{
					    eeprom_write(currAddr,	 Rxdata[i]);	
						currAddr++;
					}
					transmitByte(0xA8);
					transmitByte(0x02);
					transmitByte(0x56);
					transmitByte(0x00);
				}
				else
				{
					transmitByte(0xA8);
					transmitByte(0x03);
					transmitByte(0x7F);
					transmitByte(0x13);
					transmitByte(0x3D);
				}
        	}
        	break;

         	case 0x22:
        	{
            	//Send speed limit parameters
				transmitByte(0xA8);
				transmitByte(0x0F);
				transmitByte(0x62);
				transmitByte(VehV_vLim);
				transmitByte(VehV_tiSig >> 8);
				transmitByte(VehV_tiSig);
				transmitByte(VehV_vRef);
				transmitByte(VehSpd_numDly);

				chksum = 0;
            	for (currAddr = SID_INFO_ADDR; currAddr <= SID_INFO_END_ADDR; currAddr++)
            	{
					data = eeprom_read(currAddr);
					chksum = chksum + data;
					transmitByte(data);
	            }
				chksum = 0xA8 + 0x62 + 0x0F + VehV_vLim +(unsigned char)(VehV_tiSig >> 8) +(unsigned char)(VehV_tiSig) + VehV_vRef + VehSpd_numDly + chksum;
				transmitByte((unsigned char)chksum);
        	}
        	break;

     	    default:
		  	{
				transmitByte(0x7F);
        	}
        	break;
		}
        data = RCREG;
		RCIE = 1;
		Reset_Comm_Timeout();
	}
	EEADR = 0xA0;
}

void Task_2_100ms(void)
{
	// Speed limiting section	
	if(VehV_vRaw > VehV_vLim)
	{
		FCU_O_D  = 0;
		RLED_O_D = 1;
		VehV_stSpdLim = 1;
	}
	else if((VehV_vRaw <= VehV_vLim)&&(VehV_vRaw >= (VehV_vLim - 1)))
	{
		FCU_O_D  = ~FCU_O_D;
		RLED_O_D = ~RLED_O_D;
		VehV_stSpdLim = 1;
	}
	else
	{
		// Time out section
		if(Dev_stTmprDetActv)
		{
			FCU_O_D  = 0;	
		}
		else
		{
			FCU_O_D  = 1;
		}
		VehV_stSpdLim = 0;
	}
}

void Task_3_500ms(void)
{
	if((VehV_vRaw == 0)&&(VehSpd_numDly != 0x00))
	{
		if(VehSpd_ctDly < VehSpd_ctDlyThres)
		{
			VehSpd_ctDly++;		
		}
		else
		{
			Dev_stTmprDetActv = 1;
		}	
	}
	else
	{
		VehSpd_ctDly = 0;
		Dev_stTmprDetActv = 0;
	}

    if(VehV_stSpdLim == 0)
    {
		if(Dev_stTmprDetActv)
		{
			RLED_O_D = ~RLED_O_D;
		}
		else
		{
			RLED_O_D = 0;
		}
	}

	if(VehV_vRaw == 0)
	{
		GLED_O_D = 1;
	}
}

void main()
{
	CCPR1L  = 0x00; //Capture/Compare/PWM Register (LSB) xxxx xxxx 55
	CCPR1H  = 0x00; //Capture/Compare/PWM Register (MSB) xxxx xxxx 55
	CCP1CON = 0x00; //— — CCP1X CCP1Y CCP1M3 CCP1M2 CCP1M1 CCP1M0 --00 0000 55
	CMCON   = 0b00000111; //C2OUT C1OUT C2INV C1INV CIS CM2 CM1 CM0 0000 0000 6
	EEDATA  = 0x00; //EEPROM Data Register xxxx xxxx 89
	EEADR   = 0x00; //EEPROM Address Register xxxx xxxx 90
	EECON1  = 0x00; //— — — — WRERR WREN WR RD ---- x000 90
	VRCON   = 0x00; //VREN VROE VRR — VR3 VR2 VR1 VR0
	
	//Port Configurations
	TRISA  = 0b00011100; //TRISA7 TRISA6 TRISA5 TRISA4 TRISA3 TRISA2 TRISA1 TRISA0 1111 1111 31
	PORTA  = 0b00000001; //RA7 RA6 RA5 RA4 RA3 RA2 RA1 RA0 xxxx 0000 31
	TRISB  = 0b10110111; //TRISB7 TRISB6 TRISB5 TRISB4 TRISB3 TRISB2 TRISB1 TRISB0 
	PORTB  = 0b00000000; //RB7 RB6 RB5 RB4 RB3 RB2 RB1 RB0 xxxx xxxx 36
	//Oscillator configuration
	PCON    = 0b00001000; // — — — — OSCF(4Mhz) —PORBOR ---- 1-0x 27
	
	//Timer1 configurations
	TMR1L = 0x00; //Holding Register for the Least Significant Byte of the 16-bit TMR1 Register xxxx xxxx 48
	TMR1H = 0x00; //Holding Register for the Most Significant Byte of the 16-bit TMR1 Register xxxx xxxx 48
	T1CON = 0x00; //— — 
	T1CKPS1 = 0;
	T1CKPS0 = 0;
	T1OSCEN = 0;
	nT1SYNC = 0;	
	TMR1CS =  0;

	//Timer 2 configurations
	PR2 = 250; //Timer2 Period Register 1111 1111 107,227
	T2CON = 0b00000000; //— TOUTPS3 TOUTPS2 TOUTPS1 TOUTPS0 TMR2ON T2CKPS1 T2CKPS0 -000 0000 108,226
	TOUTPS3 = 1;
	TOUTPS2 = 0;
	TOUTPS1 = 0;
	TOUTPS0 = 1;
	T2CKPS1 = 0;
	T2CKPS0 = 1;

	//UART configurations
	
	SPBRG = 25; //Baud Rate Generator Register 0000 0000 73
	RCSTA = 0x00; //SPEN RX9 SREN CREN ADEN FERR OERR RX9D 0000 000x 72
	TXSTA = 0x00; //CSRC TX9 TXEN SYNC — BRGH TRMT TX9D 0000 -010 71
	SREN  = 0;	
	CSRC  = 0;
	SYNC  = 0;
	BRGH  = 1;
	CREN  = 1;
	TXEN  = 1;		
	SPEN  = 1;
	
	//Interrupt configurations
	OPTION_REG = 0x00; //RBPU INTEDG T0CS T0SE PSA PS2 PS1 PS0 1111 1111 23
	PIR1 = 0x00; //EEIF CMIF RCIF TXIF — CCP1IF TMR2IF TMR1IF 0000 -000 26
	PIE1 = 0x00; //EEIE CMIE RCIE TXIE — CCP1IE TMR2IE TMR1IE

	TMR1IE = 1;
	TMR1ON = 0;
	TMR2IE  = 1;
	TMR2ON  = 1;

	RCIE = 1;
	INTCON = 0x00; //GIE PEIE T0IE INTE RBIE T0IF INTF RBIF
	PEIE = 1;
	INTE = 1;

    Create_Task(Task_1_100ms, 10, 1);   /* Create Task 1 100ms task */
    Create_Task(Task_2_100ms, 10, 1);   /* Create Task 2 100ms task */
    Create_Task(Task_3_500ms, 50, 1); 	/* Create Task 3 500ms task */

	VehV_vLim				= eeprom_read(VEHV_SPDLIM_ADDR);
	VehV_vRef				= eeprom_read(SPD_REF_ADDR);
	VehV_tiSig				= (eeprom_read(VEHV_TIREF_HB_ADDR) << 8)+ eeprom_read(VEHV_TIREF_LB_ADDR);
    VehSpd_numDly			= eeprom_read(VEHV_DLY_ADDR);

	if(VehV_tiSig == 0xFFFF)
	{
		VehV_tiSig = 0x40CC;
		VehV_vRef = 0x3C;
		VehV_vLim = 0x50;
		VehSpd_numDly = 0;
	}

	switch(VehSpd_numDly)
	{
		case 0x00:
		{
			VehSpd_ctDlyThres = 0;	
		}
		break;
	
		case 0x01:
		{
			VehSpd_ctDlyThres = 20;	
		}
		break;
	
		case 0x02:
		{
			VehSpd_ctDlyThres = 40;	
		}
		break;
	
		case 0x03:
		{
			VehSpd_ctDlyThres = 120;	
		}
		break;
	
		case 0x04:
		{
			VehSpd_ctDlyThres = 240;	
		}
		break;
	
		case 0x05:
		{
			VehSpd_ctDlyThres = 360;	
		}
		break;
	
		case 0x06:
		{
			VehSpd_ctDlyThres = 480;	
		}
		break;
	
		case 0x07:
		{
			VehSpd_ctDlyThres = 600;	
		}
		break;
	
		case 0x08:
		{
			VehSpd_ctDlyThres = 720;	
		}
		break;
	
		case 0x09:
		{
			VehSpd_ctDlyThres = 840;	
		}
		break;
	
		case 0x0A:
		{
			VehSpd_ctDlyThres = 960;	
		}
		break;
	
		case 0x0B:
		{
			VehSpd_ctDlyThres = 1080;	
		}
		break;
	
		default:
		{
			VehSpd_ctDlyThres = 1200;	
		}
		break;
	}

	// Enable all the interrupts
	GIE = 1;

	EEADR = 0xA0;

	while(1)
	{
		Dispatch_Tasks();
	}	
}


