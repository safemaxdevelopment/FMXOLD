//**************************************************************
//******** FUNCTIONS FOR SERIAL COMMUNICATION USING UART *******
//**************************************************************


//**************************************************
// ***** SOURCE FILE : UART_routines.c ******
//**************************************************
//#include <usart.h>
#include "UART_routines.h"


//**************************************************
//UART0 initialize
void uart0_init(void)
{

}
//**************************************************
//Function to receive a single byte
//*************************************************
unsigned char receiveByte( void )
{
    char data;   // Holds received data

    data = RCREG;                      // Read data

    return (data);                     // Return the received data
}

//***************************************************
//Function to transmit a single byte
//***************************************************
void transmitByte(  char data )
{
    while(!TRMT);
    TXREG = data;      // Write the data byte to the USART
}


//***************************************************
//Function to transmit hex format data
//first argument indicates type: CHAR, INT or LONG
//Second argument is the data to be displayed
//***************************************************
void transmitHex( unsigned char dataType, unsigned long data )
{
    unsigned char count, i, temp;
    char dataString[] = "0x        ";

    if (dataType == CHAR) count = 2;
    if (dataType == INT) count = 4;
    if (dataType == LONG) count = 8;

    for(i=count; i>0; i--)
    {
        temp = data % 16;
        if(temp<10) dataString [i+1] = temp + 0x30;
        else dataString [i+1] = (temp - 10) + 0x41;

        data = data/16;
    }
    transmitString (dataString);
}

//***************************************************
//Function to transmit a string in RAM
//***************************************************
void transmitString( char* string)
{
    while (*string)
        transmitByte(*string++);
}

//************ END ***** www.dharmanitech.com *******
