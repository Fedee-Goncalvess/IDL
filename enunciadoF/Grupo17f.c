/*Escriba un programa en lenguaje de programación C que permita el ingreso
de un valor expresado en notación decimal ±eee.ffff y lo convierta a
representación en punto fijo de 16 bits Q(7,8). El programa debe validar la
entrada y determinar si el número ingresado está dentro del rango
representable. La salida debe expresarse en Hexadecimal (0xHHHH)

Cantidad entera representable = 127
Cantidad fraccionaria representable = 0.9375 -> 255
*/

#include "../headers/funciones.h"

int main()
{
    int16_t resultado;

    if (ingresarEnDecimal_16(&resultado, 7, 8))
    {
        printf("\n0x%X\n", resultado & 0xFFFF);
    }
    else
        printf("\nNo es rango válido");

    return 0;
}
