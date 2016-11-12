#define LEDTIM            500
#define FECHACREACION     502 //13
#define HORACREACION     2330
#define NDELAYS             3

// clockwork
void timer(void);

// info a mostrar
int getState(void);

// right here right now !
int getDiaActual(void);
int getHoraActual(void);
void setDiaActual(int dia);
void setHoraActual(int hora);
