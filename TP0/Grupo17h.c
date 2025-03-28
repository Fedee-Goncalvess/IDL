#include <stdio.h>
#include "headers/Grupo17funciones.h"

#define cantDigF 4

#define valorMaxX 0x7f800000
#define valorMinX 0x80800000

#define cantDigE_m 1
#define nBitsE_m 0
#define nBitsF_m 15

#define cantDigE_b 3
#define nBitsE_b 7
#define nBitsF_b 8

#define cantDigE_x 5
#define nBitsE_x 15
#define nBitsF_x 16

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32);
int32_t multiplicacion_32(int32_t a, int32_t b, int16_t nBitsF_32);

int main()
{

    int16_t m_16, b_16;
    int32_t m_32, b_32, x_32;

    printf("--- Ingreso de m (Pendiente) ---");
    if (!ingresarEnDecimal_16(&m_16, nBitsE_m, nBitsF_m, cantDigE_m, cantDigF))
    {
        printf("Valor de m se salió del rango\n");
        return 0;
    }
    m_32 = normalizar_16_A_32(m_16, nBitsE_m, nBitsF_m, nBitsE_x, nBitsF_x);

    printf("--- Ingreso de b (Ordenada al origen) ---) ");
    if ((!ingresarEnDecimal_16(&b_16, nBitsE_b, nBitsF_b, cantDigE_b, cantDigF)))
    {
        printf("Valor de b se salió del rango\n");
        return 0;
    }
    b_32 = normalizar_16_A_32(b_16, nBitsE_b, nBitsF_b, nBitsE_x, nBitsF_x);

    printf("--- Ingreso de x ---");
    if (!ingresarEnDecimal_32(&x_32, nBitsE_x, nBitsF_x, cantDigE_x, cantDigF))
    {
        printf("El valor ingresado está fuera del rango\n");
        return 0;
    }

    if (x_32 & 0x80000000)
    {
        if (x_32 < valorMinX)
        {
            printf("El valor ingresado está fuera del rango funcional \n");
            return 0;
        }
    }
    else if ((x_32 > valorMaxX))
    {
        printf("El valor ingresado está fuera del rango funcional \n");
        return 0;
    }

    int32_t y_32 = multiplicacion_32(x_32, m_32, nBitsF_x) + b_32;

    printf("Valor de y: ");
    printInDecimal_32(y_32, nBitsE_x, nBitsF_x);
    printf("\n0x%X", y_32);

    return 1;
}

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32)
{
    int32_t resultado = n & 0xFFFF;
    int32_t signo = 0x00008000 & resultado;

    resultado = resultado << (nBitsF_32 - nBitsF_16);

    if (signo != 0)
    {
        int32_t mascara = (0x7FFFFFFF) - ((1 << (nBitsF_32 + nBitsE_16)) - 1);
        resultado = (resultado + mascara);

        int32_t aux = (1 << (nBitsF_32 + nBitsE_16)) - 1;

        resultado = ((resultado)) ^ ((0x7FFFFFFF - aux));
    }

    return (resultado);
}

int32_t multiplicacion_32(int32_t a, int32_t b, int16_t nBitsF_32)
{
    int64_t temp = (int64_t)a * (int64_t)b; // Multiplicación de 64 bits
    temp = temp >> nBitsF_32;               // Ajustar la escala de vuelta a 32 bits
    return (int32_t)temp;                   // Truncar a 32 bits
}