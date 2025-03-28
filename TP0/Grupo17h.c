#include <stdio.h>
#include "headers/Grupo17funciones.h"

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32);
int32_t multiplicacion_32(int32_t a, int32_t b, int16_t nBitsF_32);

int main()
{

    int32_t valorMaxX = 32640;
    int32_t valorMinX = -32640;
    // Rango de valores de x para el que aseguramos que el programa es totalmente funcional

    int16_t m_16, b_16;
    int32_t m_32, b_32, x_32;

    printf("Ingreso m, ");
    if (!ingresarEnDecimal_16(&m_16, 0, 15, 1, 4))
    {
        printf("Valor de m se salió del rango\n");
        return 0;
    }

    m_32 = normalizar_16_A_32(m_16, 0, 15, 15, 16);
    printInDecimal_16(m_16,0,15);

    printf("Ingrese b, ");
    if ((!ingresarEnDecimal_16(&b_16, 7, 8, 3, 4)))
    {
        printf("Valor de b se salió del rango\n");
        return 0;
    }

    b_32 = normalizar_16_A_32(b_16, 7, 8, 15, 16);
    printInDecimal_16(b_16, 7, 8);

    printf("multiplicacion m * b: ");
    printInDecimal_32((multiplicacion_32(m_32, b_32, 16)), 15, 16);

    printf("\n");

    printf("Ingreso x, ");

    if (ingresarEnDecimal_32(&x_32, 15, 16, 5, 4))
    {
        printf("Valor de x se salió del rango\n");
        return 0;
    }

    if ((x_32 >= valorMaxX) && (x_32 <= valorMinX))
    {
        printf("Valor de x se salió del rango funcional \n");
        return 0;
    }

    int32_t y_32 = multiplicacion_32(x_32, m_32, 16) + b_32;

    printf("valor de y: ");
    printInDecimal_32(y_32, 15, 16);

    return 1;
}

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32)
{
    int32_t resultado = n & 0xFFFF;
    int32_t aux;

    resultado = resultado << (nBitsF_32 - nBitsF_16);

    if ((0x80000000 & resultado) != 0)
    {
        int32_t mascara = (0x7FFFFFFF) - ((1 << (nBitsF_32 + nBitsE_16)) - 1);

        resultado = (resultado + mascara);

        int32_t aux2 = (1 << (nBitsF_32 + nBitsE_16)) - 1;

        resultado = ((resultado)) ^ ((0x7FFFFFFF - aux2));
    }

    return (resultado);
}

int32_t multiplicacion_32(int32_t a, int32_t b, int16_t nBitsF_32)
{
    int64_t temp = (int64_t)a * (int64_t)b; // Multiplicación de 64 bits
    temp = temp >> nBitsF_32;               // Ajustar la escala de vuelta a 32 bits
    return (int32_t)temp;                   // Truncar a 32 bits
}