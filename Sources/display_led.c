#include "derivative.h"
#include <stdio.h>
#include "display_led.h"


static unsigned char disbuf[MAXDIGS];
static char str[5];
static unsigned char ans = ANSINIT;

/*  llamada desde interrupt del timer
    cada 1 ms */

void
display(void)
{
    static char digcount;
    
    SEGPORT = ALLOFF;   /* apagar barras */
    ANSPORT = ANSOFF;   /* apagar anodos */
    
    SEGPORT = disbuf[digcount];
    ANSPORT = ~ans ;    /* la mascara está negada */
    
    ans >>= 1;
    
    if( ++digcount >= MAXDIGS )
    {
        digcount = 0;
        ans = ANSINIT;    
    }
}


static const char bin_to_seg[] =
{
    CERO , UNO , DOS , TRES , CUATRO , CINCO,
    SEIS , SIETE, OCHO, NUEVE, BLANK 
};


void
print_display_led( char n , char pos )
{
    disbuf[pos] = bin_to_seg[n];
}

//#define OPTION  1

void
print_int_2_display(int n)
{
    int a , b , c , d , ibcd;
    unsigned char bcd[2];
    
    str[0] = '\0' ;
    
#ifdef OPTION
 
    (void) sprintf( str , "%04d" , n );    
    print_display_led( str[0] - '0' , 3 );
    print_display_led( str[1] - '0' , 2 );
    print_display_led( str[2] - '0' , 1 );
    print_display_led( str[3] - '0' , 0 );
 
#else

    if( n > 9999)
    {
         bcd[0] = bcd[1] = 0x99;
         return;
    }
    
	d = n / 1000;
	a = d; 
	d = n - ((n / 1000) * 1000 ) ; 
	b = d/100;
	d = d - (( d / 100) * 100); 
	c = d / 10 ; 
	d = d - (( d / 10) * 10);

	ibcd = a << 12;
	ibcd += b << 8;
	ibcd += c << 4;
	ibcd += d;

	bcd[0] = (unsigned char)(ibcd >> 8);
	bcd[1] = (unsigned char) ibcd;
 
    print_display_led( bcd[0] >> 4   , 3 );
    print_display_led( bcd[0] & 0x0F , 2 );
    print_display_led( bcd[1] >> 4   , 1 );
    print_display_led( bcd[1] & 0x0F , 0 );
 
 #endif
}