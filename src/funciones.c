#include "../headers/funciones.h"

typedef struct
{
    int16_t posPunto;
    int16_t cantEnteros;
    int16_t cantFraccion;
} dataString;

int16_t verificarEntrada(char *entrada, dataString *arreglo, char *negativo);
void pedirEntrada(char *entrada);
int16_t esNumero(char caracter);

int16_t validarRango_16(int16_t resul);
int16_t conversionValidacion_16(char *entrada, dataString *arreglo, char negativo, int16_t *resultado, int16_t nBitsE, int16_t nBitsF);

int16_t validarRango_32(int32_t resul);
int16_t conversionValidacion_32(char *entrada, dataString *arreglo, char negativo, int32_t *resultado, int16_t nBitsE, int16_t nBitsF);

int16_t verificarEntrada(char *entrada, dataString *arreglo, char *negativo)
{

    int16_t i;
    *negativo = 0;

    if ((entrada[0] == '-') || (entrada[0] == '+'))
    { // Si tiene un +- no se procesa ese caracter
        if (entrada[0] == '-')
        { // Caso de ser - se guarda flag
            *negativo = 1;
        }
        i = 1;
    }
    else if (esNumero(entrada[0]))
    { // Si no tiene +- se procesa completo
        i = 0;
    }
    else
    {
        printf("\nEntrada Invalida");
        printf("\nDebe ingresar +- o un número en la primer celda");
        return 0;
    }

    arreglo->posPunto = 0;
    int16_t cantEnteros = 0;
    int16_t cantFraccion = 0;

    for (i; i < strlen(entrada); i++) // Se procesa string
    {
        int16_t es_num = esNumero(entrada[i]);

        if (!es_num)
        {                                                      // No es numero
            if ((entrada[i] == '.') && (!(arreglo->posPunto))) // Único caracter válido es un punto
            {
                arreglo->posPunto = i; // Se tiene en cuenta posición del punto
            }
            else
            {
                printf("\nEntrada Invalida");
                printf("\nSolo puede haber un punto dentro del numero");
                return 0;
            }
        }
        else
        { // Es numero
            if (arreglo->posPunto)
            { // A partir de la posición del punto se analiza Enteros y Fracciones
                cantFraccion++;
            }
            else
                cantEnteros++;
        }
    }

    if ((cantEnteros > 3) || (cantEnteros < 1) || (cantFraccion > 4) || (cantFraccion < 1))
    { // Con lo anterior, se valida el rango
        printf("\nEntrada Invalida");
        printf("\n  Debe haber entre 1-3 valores enteros");
        printf("\n  Debe haber como entre 1-4 valores fraccionarios");
        printf("\n  Debe haber un punto fijo");
        return 0;
    }
    arreglo->cantEnteros = cantEnteros;
    arreglo->cantFraccion = cantFraccion;
    return 1;
}

void pedirEntrada(char *entrada)
{
    printf("\nIngrese un valor decimal ±eee.ffff\n");
    scanf(" %9s", entrada); // Restringe los primeros 9 digitos
}

int16_t esNumero(char caracter)
{
    if ((caracter <= '9') && (caracter >= '0'))
        return 1;
    else
        return 0;
}

void printInDecimal_32(int32_t resul, int16_t nBitsE, int16_t nBitsF) // Recibe la representacion Q(15,16) del valor guardado en resul y lo imprime en formato decimal +-eee.ffff
{
    // Mascara para ver el bit de signo
    uint32_t aux = 0;
    int32_t mascaraE, mascaraF;
    int32_t mascaraSigno = 0x80000000;
    if ((resul & mascaraSigno) == 0)
    {
        // Ahora me quedo con la parte entera utilizando otra mascara que me deje los 7 bits despues del MSB
        mascaraF = (1 << nBitsF) - 1;
        mascaraE = 0x7FFFFFFF - mascaraF;

        aux = mascaraE & resul;

        aux = aux >> nBitsF;

        printf("%d", aux); // Imprimo la parte entera

        printf(".");
        // Me quedo con la parte fraccionaria utilizando otra mascara
        aux = mascaraF & resul;

        int32_t nroImprimir = 0;
        int32_t j = 10;
        for (size_t i = 1; i < 5; i++, j = j * 10)
        {
            nroImprimir = (aux * j / (1 << nBitsF)) % 10;
            printf("%d", nroImprimir);
        }
    }
    else
    {
        printf("-"); // Imprimo el menos
        // Invierto los bits por ser CA2 y al ya haber imprimido el signo  en vez de restarle la resolucion se la sumo
        aux = ~resul + 1; // Sumo uno ya que como tengo toda la variable en 16 bits al sumarle 1 es como que le estoy sumando la resolucion que luego interpretare por separado
        // Ya tengo el valor en BSS para poder imprimir , trabajo con la Parte entera
        mascaraF = (1 << nBitsF) - 1;
        mascaraE = 0xFFFFFFFF;

        int32_t parteEntera = (mascaraE & aux) >> nBitsF;
        printf("%d.", parteEntera);
        // Parte fraccionaria
        int32_t parteFraccionaria = mascaraF & aux;

        int32_t nroImprimir;
        int32_t j = 10;
        for (size_t i = 1; i < 5; i++, j = j * 10)
        {
            nroImprimir = (aux * j / (1 << nBitsF)) % 10;
            printf("%d", nroImprimir);
        }
    }
    printf("\n");
}

/* cambiar En base al punto e) hay que definir cuál es el rango válido*/
int32_t ingresarEnDecimal_32(int32_t *resultado, int16_t nBitsE, int16_t nBitsF)
{
    printf("\nLos valores validos son");
    printf("\nEnteros = 127");
    printf("\nFraccionaros = 255\n");
    // cambiar No sería más fácil decir positivos hasta 127.9961 y negativos
    // hasta -128?

    int16_t buffer = 10;
    char entrada[buffer];
    pedirEntrada(entrada);

    dataString arreglo;

    char negativo; // Flag Negativo se usa al expresar en hexa
    while (!verificarEntrada(entrada, &arreglo, &negativo))
    {
        pedirEntrada(entrada);
    }

    if (conversionValidacion_32(entrada, &arreglo, negativo, resultado, nBitsE, nBitsF))
    { // De string a Integer y validacion
        return 1;
    }
    else
        return 0;
}

int16_t conversionValidacion_32(char *entrada, dataString *arreglo, char negativo, int32_t *resultado, int16_t nBitsE, int16_t nBitsF)
{
    if (nBitsE + nBitsF > 31)
    {
        return 0;
    }
    int16_t i;
    int16_t fin = (arreglo->posPunto) - (arreglo->cantEnteros);
    int16_t multiplicador = 1;
    int16_t valor;
    int32_t resulEntero = 0;
    for (i = arreglo->posPunto - 1; i >= fin; i--)
    {
        valor = entrada[i] - 48; // Diferencia Ascii a Integer
        resulEntero = resulEntero + multiplicador * valor;

        if (((resulEntero > ((1 << nBitsE) - 1)) && (!negativo)) || (resulEntero > (1 << nBitsE)))
        { // Validación de rango
            return 0;
        }

        multiplicador = multiplicador * 10;
    }

    multiplicador = 1000;
    int32_t conversion = 0;
    for (i = (arreglo->posPunto) + 1; i < strlen(entrada); i++)
    {
        valor = entrada[i] - 48; // Diferencia Ascii a Integer
        conversion = conversion + multiplicador * valor;
        multiplicador = multiplicador / 10;
    }

    int32_t resulFraccion = 0;
    for (i = nBitsF - 1; i >= 0; i--) // Conversión de Fracción a Binario
    {
        conversion = conversion << 1;
        if (conversion >= 10000)
        {
            resulFraccion = resulFraccion | 1 << i;
            conversion = conversion - 10000;
        }
        // cambiar rango
        if (resulFraccion > ((2 << nBitsF) - 1))
        { // Validación de rango
            return 0;
        }
    }

    *resultado = resulEntero;
    *resultado = *resultado << nBitsF;
    *resultado = *resultado | resulFraccion;

    if ((negativo) && (resultado != 0))
    {
        *resultado = ~(*resultado);
        (*resultado)++;
    }

    return 1;
}

int16_t validarRango_32(int32_t resul)
{
    // cambiar: ver que onda el rango se va a la mierda como para printearlo
    // printf("\n%d < 32769", resul);
    if ((resul < 0x7FFFFFFF))
    {
        return 1;
    }
    else
        return 0;
}

void printInDecimal_16(int16_t resul, int16_t nBitsE, int16_t nBitsF) // Recibe la representacion Q(7,8) del valor guardado en resul y lo imprime en formato decimal +-eee.ffff
{
    // Mascara para ver el bit de signo
    uint16_t aux = 0;
    int16_t mascaraE, mascaraF;
    int16_t mascaraSigno = 0x8000;
    if ((resul & mascaraSigno) == 0)
    {
        // Ahora me quedo con la parte entera utilizando otra mascara que me deje los 7 bits despues del MSB
        mascaraF = (1 << nBitsF) - 1;
        mascaraE = 0x7FFF - mascaraF;

        aux = mascaraE & resul;

        aux = aux >> nBitsF;

        printf("%d", aux); // Imprimo la parte entera

        printf(".");
        // Me quedo con la parte fraccionaria utilizando otra mascara
        aux = mascaraF & resul;

        int16_t nroImprimir = 0;
        int16_t j = 10;
        for (size_t i = 1; i < 5; i++, j = j * 10)
        {
            nroImprimir = (aux * j / (1 << nBitsF)) % 10;
            printf("%d", nroImprimir);
        }
    }
    else
    {
        printf("-"); // Imprimo el menos
        // Invierto los bits por ser CA2 y al ya haber imprimido el signo  en vez de restarle la resolucion se la sumo
        aux = ~resul + 1; // Sumo uno ya que como tengo toda la variable en 16 bits al sumarle 1 es como que le estoy sumando la resolucion que luego interpretare por separado
        // Ya tengo el valor en BSS para poder imprimir , trabajo con la Parte entera
        mascaraF = (1 << nBitsF) - 1;
        mascaraE = 0xFFFF - mascaraF;

        int16_t parteEntera = (mascaraE & aux) >> nBitsF;
        printf("%d.", parteEntera);
        // Parte fraccionaria
        int16_t parteFraccionaria = mascaraF & aux;

        int16_t nroImprimir;
        int16_t j = 10;
        for (size_t i = 1; i < 5; i++, j = j * 10)
        {
            nroImprimir = (aux * j / (1 << nBitsF)) % 10;
            printf("%d", nroImprimir);
        }
    }
    printf("\n");
}

int16_t ingresarEnDecimal_16(int16_t *resultado, int16_t nBitsE, int16_t nBitsF)
{
    printf("\nLos valores validos son");
    printf("\nEnteros = 127");
    printf("\nFraccionaros = 255\n");
    // No sería más fácil decir positivos hasta 127.9961 y negativos
    // hasta -128?

    int16_t buffer = 10;
    char entrada[buffer];
    pedirEntrada(entrada);

    dataString arreglo;

    char negativo; // Flag Negativo se usa al expresar en hexa
    while (!verificarEntrada(entrada, &arreglo, &negativo))
    {
        pedirEntrada(entrada);
    }

    if (conversionValidacion_16(entrada, &arreglo, negativo, resultado, nBitsE, nBitsF))
    { // De string a Integer y validacion
        return 1;
    }
    else
        return 0;
}

int16_t conversionValidacion_16(char *entrada, dataString *arreglo, char negativo, int16_t *resultado, int16_t nBitsE, int16_t nBitsF)
{
    if (nBitsE + nBitsF > 15)
    {
        return 0;
    }
    int16_t i;
    int16_t fin = (arreglo->posPunto) - (arreglo->cantEnteros);
    int16_t multiplicador = 1;
    int16_t valor;
    int16_t resulEntero = 0;
    for (i = arreglo->posPunto - 1; i >= fin; i--)
    {
        valor = entrada[i] - 48; // Diferencia Ascii a Integer
        resulEntero = resulEntero + multiplicador * valor;

        if (((resulEntero > ((1 << nBitsE) - 1)) && (!negativo)) || (resulEntero > (1 << nBitsE)))
        { // Validación de rango
            return 0;
        }

        multiplicador = multiplicador * 10;
    }

    multiplicador = 1000;
    int16_t conversion = 0;
    for (i = (arreglo->posPunto) + 1; i < strlen(entrada); i++)
    {
        valor = entrada[i] - 48; // Diferencai Ascii a Integer
        conversion = conversion + multiplicador * valor;
        multiplicador = multiplicador / 10;
    }

    int16_t resulFraccion = 0;
    for (i = nBitsF - 1; i >= 0; i--) // Conversión de Fracción a Binario
    {
        conversion = conversion << 1;
        if (conversion >= 10000)
        {
            resulFraccion = resulFraccion | 1 << i;
            conversion = conversion - 10000;
        }

        if (resulFraccion > ((2 << nBitsF) - 1))
        { // Validación de rango
            return 0;
        }
    }

    *resultado = resulEntero;
    *resultado = *resultado << nBitsF;
    *resultado = *resultado | resulFraccion;

    if ((negativo) && (resultado != 0))
    {
        *resultado = ~(*resultado);
        (*resultado)++;
    }

    return 1;
}

int16_t validarRango_16(int16_t resul)
{
    printf("\n%d < 32769", resul);
    if ((resul < 0x7FFF))
    {
        return 1;
    }
    else
        return 0;
}