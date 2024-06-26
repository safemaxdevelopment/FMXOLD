// Header files
#include "schedule.h"
#include "Interrupts.h"
#include "UART_routines.h"
#include "HWConfig.h"

// Basic definitions
#define _XTAL_FREQ 			4000000UL
#define TIME_BASE_SPD_CALC 	1
#define DIAG_TI_WAIT		5
#define MIN_THRESHOLD		30
#define PIC16f913
#define DEBUG 				1

//EEPROM address locations
#define VEHV_SPDLIM_ADDR		0x00
#define VEHV_TIREF_HB_ADDR		0x01
#define VEHV_TIREF_LB_ADDR		0x02
#define SPD_REF_ADDR			0x03
#define VEHV_DLY_ADDR			0x04
#define SID_INFO_ADDR 			0x05
#define SID_INFO_END_ADDR		0x0C

// Global Message definitions

unsigned char VehV_vLim = 0;
unsigned char VehSpd_numDly = 0;
unsigned int VehSpd_ctDlyThres = 0;
unsigned int VehSpd_ctDly = 0;
unsigned char VehV_v = 0;
unsigned char VehV_vRef = 40;
unsigned int  VehV_tiSig  = 0xD528;
unsigned char Dev_stTmprDetActv	= 0;
unsigned char VehV_stSpdLim		= 0;

extern unsigned char Rx_complete;
extern void Reset_Comm_Timeout(void);

volatile unsigned char Rxdata[25];
volatile unsigned char RxPtr;

extern void Reset_Comm_Timeout(void);
unsigned char Checksum;
unsigned int Rx_elapsed_ticks;
unsigned char Rx_complete;


//Calibratables

extern unsigned short long VehSpd_tiPulseCom;
extern unsigned short long VehV_ctPulse;


// Function Prototypes
void Veh_speed_limit(void);



