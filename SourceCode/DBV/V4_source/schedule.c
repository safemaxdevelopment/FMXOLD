#include <pic.h>
#include <htc.h>
#include "schedule.h"


// Count the number of ticks yet to be processed.
volatile unsigned int elapsed_ticks;
extern volatile unsigned char RxPtr;

task_type tasks[NUM_TASKS];

void Dispatch_Tasks(void)
{
    unsigned char i;

    while (elapsed_ticks > 0)
    { 

		// TRUE only if the ISR ran.
        for (i = 0; i < NUM_TASKS; i++)
        {

            if (--tasks[i].delay == 0)
            {
                tasks[i].delay = tasks[i].period;
                tasks[i].task(); // Execute the task!
            }
        }
        --elapsed_ticks;
    }
}


void Create_Task(void (*function_pointer)(void),
                 unsigned int period,
                 unsigned int delay)
{
    static unsigned char index = 0;
//    assert(index < NUM_TASKS);

    tasks[index].task = function_pointer;
    tasks[index].period = period;
    // Avoid underflow in the dispatcher.
    tasks[index].delay = delay + 1;
    ++index;

}

void Wait_Task(unsigned char del)
{

}