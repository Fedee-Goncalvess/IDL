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

    printf("Valor de y en decimal: ");
    printInDecimal_32(y_32, nBitsE_x, nBitsF_x);
    printf("Valor de y en hexadecimal: 0x%X\n", y_32);

    return 1;
}

int32_t normalizar_16_A_32(int16_t n, int16_t nBitsE_16, int16_t nBitsF_16, int16_t nBitsE_32, int16_t nBitsF_32)
{
    // Al realizar la operación redudante 'n % 0xFFFF' la variable 'n' de 16 bits se carga en 'resultado' de 32 bits
    // con el resto de bits superiores al bit de posición 16 en 0
    int32_t resultado = n & 0xFFFF;

    // El desfasaje entre las representaciones en punto fijo Q(nBitsE_16,nBitsF_16) y Q(nBitsE_32,nBitsF_32) se puede
    // escribir como 'nBitsF_32 - nBitsF_16'. Al desplazar 'n' dentro de 'resultado' acomodamos las partes fraccionaria
    // y entera a la nueva representación
    resultado = resultado << (nBitsF_32 - nBitsF_16);

    // Habiendo hecho el desplazamiento, queda ahora "acomodar" el bit de signo, procedemos a aplicar el
    // método explicado en el informe
    int32_t mascara = (0x7FFFFFFF) - ((1 << (nBitsF_32 + nBitsE_16)) - 1);

    resultado = (resultado + mascara) ^ mascara;

    return resultado;
}

int32_t multiplicacion_32(int32_t a, int32_t b, int16_t nBitsF_32)
{
    // Multiplicación de 64 bits
    int64_t temp = (int64_t)a * (int64_t)b;

    // Ajustar la escala de vuelta a 32 bits
    temp = temp >> nBitsF_32;

    // Truncar a 32 bits
    return (int32_t)temp;
}