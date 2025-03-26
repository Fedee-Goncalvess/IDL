#include <stdio.h>
#include "headers/Grupo17funciones.h"

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32);
int32_t division_32(int32_t a, int32_t b, int16_t nBitsF);
int32_t multiplicacion_32(int32_t a, int32_t b, int16_t nBitsF_32);

int main()
{

    int32_t valorMaxX = 32640;
    int32_t valorMinX = -32640;
    int16_t m_16, b_16;
    int32_t m_32, b_32, x_32;

    printf("Ingreso m, ");
    ingresarEnDecimal_16(&m_16, 0, 15);
    m_32 = normalizar_16_A_32(m_16, 0, 15, 15, 16);

    printf("Ingrese b, ");
    ingresarEnDecimal_16(&b_16, 7, 8);
    b_32 = normalizar_16_A_32(b_16, 7, 8, 15, 16);

    printf("multiplicion: ");
    printInDecimal_32((multiplicacion_32(m_32, b_32, 16)), 15, 16);

    printf("\n");

    printf("Ingreso x, ");
    ingresarEnDecimal_32(&x_32, 15, 16);

    if ((x_32 >= valorMaxX) && (x_32 <= valorMinX))
    {
        printf("Valor de x se salió del rango\n");
        return 0;
    }

    int32_t y_32 = multiplicacion_32(x_32,m_32,16) + b_32;

    printf("valor de y: ");
    printInDecimal_32(y_32,15,16);

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

int32_t division_32(int32_t a, int32_t b, int16_t nBitsF)
{
    int32_t factor = 1 << nBitsF;
    int64_t resultado = (int64_t)a * factor;

    resultado /= b;

    return (int32_t)resultado;
}

int32_t multiplicacion_32(int32_t a, int32_t b, int16_t nBitsF_32)
{
    int64_t temp = (int64_t)a * (int64_t)b; // Multiplicación de 64 bits
    temp = temp >> nBitsF_32;               // Ajustar la escala de vuelta a 32 bits
    return (int32_t)temp;                   // Truncar a 32 bits
}