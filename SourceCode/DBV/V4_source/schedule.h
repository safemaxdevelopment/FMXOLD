#include "schedule_config.h"

void Create_Task(void (*function_pointer)(void),
                 unsigned int period,
                 unsigned int delay);

void Dispatch_Tasks(void);
