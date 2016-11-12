// state machine

// cuenta de la hora
// hora actual
// fecha de inicio
// dia actual

// extender a reloj de tiempo real

#include <hidef.h>      /* for EnableInterrupts macro */
#include "derivative.h" /* include peripheral declarations */
#include "gendefs.h"
#include "display_led.h"
#include "timer.h"

void MCU_init(void);

void 
main(void) 
{
    MCU_init();         /* HARDWARE */
    
    EnableInterrupts;
    
    for(;;)
    {
       int state = getState();
       
       int mensaje = getHoraActual();
       
       mensaje = (state == 0)?getDiaActual():mensaje;
       mensaje = (state == 1)?FECHACREACION:mensaje;
       
       print_int_2_display(mensaje);
    }    
    
}