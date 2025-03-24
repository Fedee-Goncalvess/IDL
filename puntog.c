#include <stdint.h>
#include <string.h>
#include <stdio.h>

int controlEntradaYConversion(char *, int16_t *);
int16_t digitHexToDec(char car);
void imprimirBinario(int16_t num);
void expresarDecimal(int16_t resul);

int main(int argc, char const *argv[])
{
    char num[100];
    int16_t resul;
    resul = 0;
    printf("Ingrese un numero hexadecimal expresado en la forma 0xHHHH: ");
    scanf(" %s", num);

    controlEntradaYConversion(num, &resul);

    // Tengo en resul la representacion de la entrada
    expresarDecimal(resul);
    // imprimirBinario(resul);
    return 0;
}

void imprimirBinario(int16_t num)
{
    for (int i = 15; i >= 0; i--)
    {
        printf("%d", (num >> i) & 1);
    }
}

void expresarDecimal(int16_t resul)
{
    // Mascara para ver el bit de signo
    int16_t aux = 0;
    int16_t mascara = 0x8000;
    int16_t mascaraSigno;
    if ((resul & mascara) == 0)
        mascaraSigno = 0;
    else
        mascaraSigno = 0x8000;

    // Ahora me quedo con la parte entera utilizando otra mascara que me deje los 7 bits despues del MSB
    mascara = 0x7F00;
    aux = mascara & resul;
    aux = aux >> 8;
    aux = aux | mascaraSigno;
    if (mascaraSigno != 0)
    {
        int16_t mascaraNegativo = 0x7F80;
        aux = aux | mascaraNegativo;
    }

    printf("%d", aux); // Imprimo la parte entera

    printf(".");
    // Me quedo con la parte fraccionaria utilizando otra mascara
    mascara = 0x00FF;
    aux = mascara & resul;

    if (mascaraSigno != 0)
    {
        aux = ~(aux ^ 0xFF00);
    }
    int16_t nroImprimir = 0;
    int16_t j = 10;
    for (size_t i = 1; i < 5; i++, j = j * 10)
    {
        nroImprimir = (aux * j / 256) % 10;
        printf("%d", nroImprimir);
    }
}

int controlEntradaYConversion(char *num, int16_t *resul)
{
    size_t longitud = strlen(num);
    if ((longitud != 6) || ((num[0] != '0') || (num[1] != 'x'))) // Se excedio de caracteres o no cumple formato 0x
        return 0;

    int16_t auxResul;
    char car;

    size_t j = 3; // Esta variable la utilizara para hacer el desplazamiento
    for (size_t i = 2; i < longitud; i++, j--)
    {
        car = num[i];
        if (((car < 48) || (car > 70)) || ((car > 57 && car < 65))) // No forma parte de los numeros o letras de la A-F
            return 0;
        // Es valido el digito hexadecimal

        auxResul = digitHexToDec(car);

        auxResul = auxResul << (4 * j);
        *(resul) = auxResul + *(resul);
    }

    return 1;
}

int16_t digitHexToDec(char car) // Asumo que me viene un caracter Hexa valido
{
    if (car < 58)
        return car - 48;
    else
        return car - 55;
}