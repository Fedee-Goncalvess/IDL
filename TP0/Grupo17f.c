#include "headers/Grupo17funciones.h"

#define nBitsE 7
#define nBitsF 8
#define nDigE 3
#define nDigF 4

int main()
{
    int16_t resultado;

    if (ingresarEnDecimal_16(&resultado, nBitsE, nBitsF, nDigE, nDigF))
    {
        printf("\n0x%X\n", resultado & 0xFFFF);
    }
    else
        printf("\nNo es rango válido");

    return 0;
}
