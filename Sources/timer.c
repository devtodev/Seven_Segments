#include "derivative.h"
#include "display_led.h"
#include "gendefs.h"
#include "timer.h"


#pragma DATA_SEG DIRECT MY_ZEROPAGE
// reloj de tiempo real;
                                       //  DIA   CREACION
const unsigned long MAXIMOS[NDELAYS] = { 20000,  900000 };
const unsigned long VER[NDELAYS]     = {  3000,   10000 };

static unsigned long  delay[NDELAYS];
int horaActual = 2330;
int diaActual = 502;

// cada 1 ms 
void timer(void)
{      
  int i;
  for (i = 0; i <= NDELAYS; i++)
    ++delay[i];
}

// info a mostrar
int getState() 
{  
    int i;
    for (i = 0; i <= NDELAYS; i++)
    {          
      if (delay[i] >= MAXIMOS[i]) 
      {
        if (delay[i] >= MAXIMOS[i] + VER[i]) 
        {
          delay[i] = 0;
        } else {
          return i;
        }      
      }  
    }
    
    return -1;
}

// right here right now !
int getDiaActual()
{
  return diaActual;
}

int getHoraActual() 
{
  return (int) (delay[0] / 1000);
}

void setDiaActual(int dia) 
{
  diaActual = dia;
}

void setHoraActual(int hora) 
{
  horaActual = hora;
}
