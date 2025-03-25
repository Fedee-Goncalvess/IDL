#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>
int controlEntrada(char *);
int16_t digitHexToDec(char car);
void printInDecimal(int16_t resul);
int convertHexToDec(char *num, int16_t *ptrResul);

int main(int argc, char const *argv[])
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
    printf("La conversion del numero a formato +-eee.ffff es : ");
    printInDecimal(resul);

    return 0;
}

void printInDecimal(int16_t resul) // Recibe la representacion Q(7,8) del valor guardado en resul y lo imprime en formato decimal +-eee.ffff
{
    // Mascara para ver el bit de signo
    int16_t aux = 0;
    int16_t mascara;
    int16_t mascaraSigno = 0x8000;
    if ((resul & mascaraSigno) == 0)
    {
        // Ahora me quedo con la parte entera utilizando otra mascara que me deje los 7 bits despues del MSB
        mascara = 0x7F00;
        aux = mascara & resul;
        aux = aux >> 8;

        printf("%d", aux); // Imprimo la parte entera

        printf(".");
        // Me quedo con la parte fraccionaria utilizando otra mascara
        mascara = 0x00FF;
        aux = mascara & resul;

        int16_t nroImprimir = 0;
        int16_t j = 10;
        for (size_t i = 1; i < 5; i++, j = j * 10)
        {
            nroImprimir = (aux * j / 256) % 10;
            printf("%d", nroImprimir);
        }
    }
    else
    {
        printf("-"); // Imprimo el menos
        // Invierto los bits por ser CA2 y al ya haber imprimido el signo  en vez de restarle la resolucion se la sumo
        aux = ~resul + 1; // Sumo uno ya que como tengo toda la variable en 16 bits al sumarle 1 es como que le estoy sumando la resolucion que luego interpretare por separado
        // Ya tengo el valor en BSS para poder imprimir , trabajo con la Parte entera
        mascara = 0xFF00;
        int16_t parteEntera = (mascara & aux) >> 8;
        printf("%d.", parteEntera);
        // Parte fraccionaria
        mascara = 0x00FF;
        int16_t parteFraccionaria = mascara & aux;

        int16_t nroImprimir;
        int16_t j = 10;
        for (size_t i = 1; i < 5; i++, j = j * 10)
        {
            nroImprimir = (aux * j / 256) % 10;
            printf("%d", nroImprimir);
        }
    }
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