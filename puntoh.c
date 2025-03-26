#include <stdio.h>
#include "headers/funciones.h"

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32);

int main()
{
    int16_t m, b, x;

    printf("Ingrese m: \n");
    ingresarEnDecimal_16(&m, 0, 15);

    printf("\nm en 16:");
    printInDecimal_16(m, 0, 15);
    printf("\n");
    printf("m en 16 hexa %0x\n", m & 0xFFFF);

    int32_t resultado = normalizar_16_A_32(m, 0, 15, 15, 16);

    printf("\nm en 32:");
    printInDecimal_32(resultado, 15, 16);
    printf("\n");
    printf("m en 32 hexa %0x\n", m);

    /*
    printf("Ingrese b: \n");
    ingresarEnDecimal_16(&b,7,8);

    printf("Ingrese x: \n");
    ingresarEnDecimal_32(&x,15,16);
    */
}

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32)
{
    int32_t resultado = n & 0xFFFF;
    int32_t aux;

    printf("resultado pre corriemiento %0x\n", resultado);

    resultado = resultado << (nBitsF_32 - nBitsF_16);

    //printf("lo que quiero ver: %0x\n", ((1 << (nBitsF_32 + nBitsE_16)) - 1));

    int32_t mascara = (0x7FFFFFFF) - ((1 << (nBitsF_32 + nBitsE_16)) - 1);
   
    printf("resultado %0x\n", resultado);
    printf("mascara negada %0x\n", ~mascara);
    printf("mascara %0x\n", mascara);

    resultado = (resultado + mascara);

    printf("resultado suma: %0x\n",resultado);

    aux = ((resultado & 0x80000000) >> 31) + 0xFFFFFFFF;

    printf("resul aux: %0x\n",aux);
    resultado = ~(resultado ^ aux);

    16 0x8000 = -1
    32 0x0000 8000 = 0x0001 0000

    32 0x8000 0000 -> 0x1111 0000

    0b 1000 0000 ... 0000 0000
       0111 1111     0000 0000
    xor
    ---------------------------
       1111 1111     0000 0000

    1001 
    0000
    ----
    1001
    0110

    printf("resultado final: %0x\n",resultado);

    return resultado;
}