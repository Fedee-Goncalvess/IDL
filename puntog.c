#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>

#include "headers/funciones.h"

int controlEntrada(char *);
int16_t digitHexToDec(char car);
int convertHexToDec(char *num, int16_t *ptrResul);
int16_t ingresarEnHexadecimal();

int main(int argc, char const *argv[])
{
    int16_t resultado = ingresarEnHexadecimal();
    printf("La conversion del numero a formato +-eee.ffff es : ");
    printInDecimal_16(resultado);

    return 0;
}

int16_t ingresarEnHexadecimal()
{
    char num[100];
    int16_t resul;
    resul = 0;
    printf("Ingrese un numero hexadecimal expresado en la forma 0xHHHH: ");
    scanf(" %s", num);

    while (!controlEntrada(num))
    {
        printf("ERROR : El numero ingresado no cumple con el formato 0xHHHH. Por favor vuelva a ingresar el numero : ");
        scanf(" %s", num);
        controlEntrada(num);
    }
    convertHexToDec(num, &resul); // Devuelve en resul la conversion
    // Tengo en resul la representacion de la entrada

    return resul;
}

int controlEntrada(char *num) // Esta funcion valida que la entrada hexadecimal sea del formato 0xHHHH
{
    size_t longitud = strlen(num);
    if ((longitud != 6) || ((num[0] != '0') || (num[1] != 'x'))) // Se excedio de caracteres o no cumple formato 0x
        return 0;
    char car;
    for (size_t i = 2; i < 6; i++)
    {
        car = num[i];
        if ((car >= 'a' && car <= 'f'))
            num[i] = toupper(car);
        else if (!((car >= '0' && car <= '9') || (car >= 'A' && car <= 'F')))
            return 0;
    }
}

int convertHexToDec(char *num, int16_t *ptrResul) // Esta funcion guarda en *ptrResul la conversion de la entrada hexa en decimal
{
    size_t longitud = strlen(num);
    int16_t auxResul;
    char car;

    size_t j = 3; // Esta variable la utilizara para hacer el desplazamiento dentro de la varuable aux
    for (size_t i = 2; i < longitud; i++, j--)
    {
        car = num[i];
        if (((car < 48) || (car > 70)) || ((car > 57 && car < 65))) // No forma parte de los numeros o letras de la A-F
            return 0;
        // Es valido el digito hexadecimal

        auxResul = digitHexToDec(car);

        auxResul = auxResul << (4 * j);
        *(ptrResul) = auxResul + *(ptrResul);
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