#include <pic.h>
#include <htc.h>
#include "HWConfig.h"
#define TIME_BASE_SPD_CALC	1
#define OSC_SCALING_FACT	1

extern volatile unsigned int elapsed_ticks;
extern volatile unsigned char Rxdata[25];
extern volatile unsigned char RxPtr;
extern unsigned char    VehV_vRef;
extern unsigned int     VehV_tiSig;
extern unsigned char VehV_stSpdLim;

volatile unsigned long  VehV_tiPulse = 0;
volatile unsigned long  VehV_tiPulseAvg = 0;
volatile int VehV_vRaw = 0;

unsigned char Checksum;
unsigned int Rx_elapsed_ticks;
unsigned char Rx_complete;

/* service routine for timer 0 interrupt */
void interrupt my_isr(void)
{
	unsigned long temp;
    
	if ((TMR2IE)&&(TMR2IF))
    {
        TMR2IF=0;
        elapsed_ticks++;

        if(Rx_elapsed_ticks > 100)
        {
            RxPtr =0;
            Rx_complete =0;
        }
        else
        {
            Rx_elapsed_ticks++;
        }
    }

    if(TMR1IF && TMR1IE)
    {
		TMR1IF = 0;
        
		VehV_tiPulse = VehV_tiPulse + 0xFFFF;
        
        if(VehV_tiPulse > 0xF4240)
        {
            VehV_tiPulseAvg = 0;
            VehV_tiPulse = 0;
            VehV_vRaw = 0;
            TMR1ON = 0;
        }
	}

    if((RCIE) && (RCIF))
    {
        Rx_elapsed_ticks =0;
        Rxdata[RxPtr] = RCREG;
        if(RxPtr==0)
        {
            Checksum = 0;
            if((Rxdata[RxPtr] == 0xA0)||(Rxdata[RxPtr] == 0x9F))
            {
                RxPtr++;
                Checksum = Rxdata[0];
            }
        }
        else if(RxPtr == 1)
        {
            if((Rxdata[RxPtr] <= 0x40))
            {
                RxPtr++;
                Checksum += Rxdata[1];
            }
            else
                RxPtr=0;
        }
        else if(RxPtr == 2)
        {
            if(Rxdata[RxPtr] <= 0x30)
            {
                RxPtr++;
                Checksum += Rxdata[2];
            }
            else
                RxPtr=0;
        }
        else if((RxPtr > 2) && (RxPtr<(Rxdata[1]+1)))
        {
            Checksum += Rxdata[RxPtr];
            RxPtr++;
        }
        else if(RxPtr==(Rxdata[1]+1))
        {
            if(Checksum == Rxdata[RxPtr])
            {
                Rx_complete =1;
            }
        }

        RCIF = 0;
    }

    if(INTF && INTE)
    {
        //RB0 interrupt
        INTF = 0 ;       // Clear interrupt flag to enable next call
        if(TMR1ON == 0)
		{
			TMR1ON = 1;
		}
		else
		{
			TMR1ON = 0;
			TMR1IF = 0;

            temp = (0xFF00&(TMR1H << 8))+ TMR1L;
            
            TMR1L = 0x00; 
			TMR1H = 0x00; 
			TMR1ON = 1;

			VehV_tiPulse = VehV_tiPulse + temp;// Combining low and high registers

			if(VehV_tiPulse > 25)
			{	
                if(VehV_tiPulseAvg != 0)
				{
					VehV_tiPulseAvg = (VehV_tiPulseAvg + VehV_tiPulse)/2;
				}
                else
                {
                    VehV_tiPulseAvg = VehV_tiPulse;
                }
				temp  = ((unsigned long)VehV_tiSig * (unsigned long)VehV_vRef);
				VehV_vRaw = (unsigned long)(temp/(VehV_tiPulseAvg));
            	VehV_tiPulse = 0;
            }
		}
		
		if(VehV_stSpdLim)
    	{
			GLED_O_D = 0;
    	}
		else
		{
			GLED_O_D = ~GLED_O_D;
		}
	}
}

void Reset_Comm_Timeout(void)
{
    Rx_complete =0;
    RxPtr = 0;
    Rx_elapsed_ticks = 0;
}
