
#define NUM_TASKS 3

typedef struct
{
    void   (*task)(void);       // Pointer to the task function.
    unsigned int period;       // Period to execute with.
    unsigned int delay;        // Delay before first call.
} task_type;




