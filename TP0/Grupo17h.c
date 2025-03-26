#include <stdio.h>
#include "headers/Grupo17funciones.h"

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32);
int32_t division_32(int32_t a, int32_t b, int16_t nBitsF);

int main()
{

    int32_t valorMaxX = 32440;
    int32_t valorMinX = -32640;
    int16_t m_16, b_16;
    int32_t m_32, b_32, x_32;

    printf("Ingrese m: \n");
    ingresarEnDecimal_16(&m_16, 0, 15);
    m_32 = normalizar_16_A_32(m_16, 0, 15, 15, 16);

    printf("Ingrese b: \n");
    ingresarEnDecimal_16(&b_16, 7, 8);
    b_32 = normalizar_16_A_32(b_16, 7, 8, 15, 16);

    printf("Dividiendo: a = %x (%f), b = %x (%f)\n",
           0x80000000 - b_32, (double)(0x80000000 - b_32) / (1 << 16),
           m_32, (double)m_32 / (1 << 16));

    int32_t muynegativoanashei = 0x80000000;
    int32_t notannegativoashane = 0x8FFF0000;

    printf("negativo??? %d\n", muynegativoanashei);

    printf("valor max: %0x\n", valorMaxX);
    printf("valor min: %0x\n", valorMinX);

    printInDecimal_32(valorMaxX, 15, 16);
    printInDecimal_32(valorMinX, 15, 16);
    printf("\n");

    printInDecimal_32(valorMaxX, 15, 16);
    printf("\n");

    printf("Ingrese x: \n");
    ingresarEnDecimal_32(&x_32, 15, 16);
}

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32)
{
    int32_t resultado = n & 0xFFFF;
    int32_t aux;

    resultado = resultado << (nBitsF_32 - nBitsF_16);

    int32_t mascara = (0x7FFFFFFF) - ((1 << (nBitsF_32 + nBitsE_16)) - 1);

    if ((0x80000000 & resultado) != 0)
    {
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
