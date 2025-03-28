#include "headers/Grupo17funciones.h"

int main()
{
    int16_t resultado;

    if (ingresarEnDecimal_16(&resultado, 7, 8, 3, 4))
    {
        printf("\n0x%X\n", resultado & 0xFFFF);
    }
    else
        printf("\nNo es rango válido");

    return 0;
}
