//**************************************************************
//******** FUNCTIONS FOR SERIAL COMMUNICATION USING UART *******
//**************************************************************


//**************************************************
// ***** HEADER FILE : UART_routines.h ******
//**************************************************

#ifndef _UART_ROUTINES_H_
#define _UART_ROUTINES_H_

#include <pic.h>
#include <htc.h>

#define CHAR 0
#define INT  1
#define LONG 2

#define TX_NEWLINE {transmitByte(0x0d); transmitByte(0x0a);}

void uart0_init(void);
unsigned char receiveByte(void);
void transmitByte(char);
void transmitString_F(const char*);
void transmitString( char*);
void transmitHex( unsigned char dataType, unsigned long data );


#endif
