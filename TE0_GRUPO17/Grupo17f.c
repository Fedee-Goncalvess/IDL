#include "headers/Grupo17funciones.h"

#define nBitsE 7
#define nBitsF 8
#define nDigE 3
#define nDigF 4

int main()
{
    int16_t resultado;

    printf("Valor máximo: ");
    printInDecimal_16(0x7FFF,nBitsE,nBitsF);
    printf("Valor mínimo: ");
    printInDecimal_16(0x8000,nBitsE,nBitsF);
    
    if (ingresarEnDecimal_16(&resultado, nBitsE, nBitsF, nDigE, nDigF))
    {
        printf("\nValor en hexadecimal: 0x%X\n", resultado & 0xFFFF);
    }
    else
        printf("\nNo es rango válido\n");

    return 0;
}
