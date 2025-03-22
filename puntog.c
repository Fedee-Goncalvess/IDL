#include <stdint.h>

int controlEntradaYConversion(char *, int16_t *);

int main(int argc, char const *argv[])
{
    char *num;
    int16_t resul;

    printf("Ingrese un numero hexadecimal expresado en la forma 0xHHHH");
    scanf(&num, "%s");

    controlEntradaYConversion(num, &resul);
    return 0;
}

int controlEntradaYConversion(char *num, int16_t *resul)
{
    if (lenght(num) > 6) // Se excedio de caracteres
        return 0;
    // Chequeo que ponga 0x ?

    int16_t auxResul;
    char car;

    size_t j = 3; // Esta variable la utilizara para hacer el desplazamiento
    for (size_t i = 2; i < lenght(num); i++, j--)
    {
        car = num[i];
        if (((car < 48) || (car > 70)) || ((car > 57 && car < 65))) // No forma parte de los numeros o letras de la A-F
            return 0;
        // Es valida la entrada

        auxResul = digitHexToDec(car);

        auxResul = auxResul << (4 * j);
        *(resul) = auxResul + *resul;
    }
}