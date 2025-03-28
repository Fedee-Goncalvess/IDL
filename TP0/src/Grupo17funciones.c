#include "../headers/Grupo17funciones.h"

typedef struct
{
    int16_t posPunto;
    int16_t cantEnteros;
    int16_t cantFraccion;
} dataString;

int16_t verificarEntrada(char *entrada, dataString *arreglo, char *negativo, int16_t nE, int16_t nF);
void pedirEntrada(char *entrada, int16_t nDigE, int16_t nDigF);
int16_t esNumero(char caracter);

int16_t conversionValidacion_16(char *entrada, dataString *arreglo, char negativo, int16_t *resultado, int16_t nBitsE, int16_t nBitsF);

int16_t conversionValidacion_32(char *entrada, dataString *arreglo, char negativo, int32_t *resultado, int16_t nBitsE, int16_t nBitsF);

// --- METODOS GENERALES
int16_t verificarEntrada(char *entrada, dataString *arreglo, char *negativo, int16_t nE, int16_t nF)
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

    if ((cantEnteros > nE) || (cantEnteros < 1) || (cantFraccion > nF) || (cantFraccion < 1))
    { // Con lo anterior, se valida el rango
        printf("\nEntrada Invalida");
        printf("\n  Debe haber entre 1-%d",nE);printf(" valores enteros");
        printf("\n  Debe haber entre 1-%d",nF);printf("valores fraccionarios");
        printf("\n  Debe haber un punto fijo");
        return 0;
    }
    arreglo->cantEnteros = cantEnteros;
    arreglo->cantFraccion = cantFraccion;
    return 1;
}

void pedirEntrada(char *entrada, int16_t nDigE, int16_t nDigF)
{
    char formato[10];                              // Espacio suficiente para almacenar el formato
    sprintf(formato, " %%%ds", nDigE + nDigF + 1); // Construye la cadena de formato
    printf("\nIngrese un valor decimal ±");
    for (int i = 0; i < nDigE; i++)
    {
        printf("e");
    }
    printf(".");
    for (int i = 0; i < nDigF; i++)
    {
        printf("f");
    }
    printf("\n");
    scanf(formato, entrada); // Usa la cadena de formato generada
}

int16_t esNumero(char caracter)
{
    if ((caracter <= '9') && (caracter >= '0'))
        return 1;
    else
        return 0;
}

// --- FIN METODOS GENERALES

// --- METODOS 16 BITS

int16_t printInDecimal_16(int16_t resul, int16_t nBitsE, int16_t nBitsF) // Recibe la representacion Q(nBitsE,8) del valor guardado en resul y lo imprime en formato decimal +-eee.ffff
{
    if (nBitsE + nBitsF > 15)
    {
        return 0; // Devuelve error si la representación Q(nBitsE,nBitsF) no es válida para 32 bits
    }
    // Mascaras para ver el bit de signo , parte entera , parte fraccionaria y variables auxiliares.
    uint16_t aux = resul;
    int16_t mascaraE, mascaraF;
    int16_t mascaraSigno = 0x8000;
    int16_t parteFraccionaria, parteEntera;

    if ((aux & mascaraSigno) == 0)
    {
        // Ahora me quedo con la parte entera
        mascaraF = (1 << nBitsF) - 1;
        mascaraE = 0x7FFF - mascaraF;
    }
    else
    {
        printf("-"); // Imprimo el menos
        // Invierto los bits por ser CA2 y al ya haber imprimido el signo  en vez de restarle la resolucion se la sumo
        aux = ~aux + 1; // Sumo uno ya que como tengo toda la variable en 16 bits al sumarle 1 es como que le estoy sumando la resolucion que luego interpretare por separado
        // Ya tengo el valor en BSS para poder imprimir , trabajo con la Parte entera
        mascaraF = (1 << nBitsF) - 1;
    }

    parteEntera = (mascaraE & aux) >> nBitsF;
    printf("%d.", parteEntera);
    // Parte fraccionaria
    parteFraccionaria = mascaraF & aux;

    int16_t nroImprimir;
    int16_t j = 10;
    for (size_t i = 1; i < 5; i++, j = j * 10)
    {
        nroImprimir = (parteFraccionaria * j / (1 << nBitsF)) % 10;
        printf("%d", nroImprimir);
    }
    printf("\n");

    return 1;
}

// Ingresa un número en representación en punto fijo Q(nBitsE,nBitsF) con un espacio de 16bits
// y la cantidad de digitos decimales enteros y fraccionarios de la entrada
int16_t ingresarEnDecimal_16(int16_t *resultado, int16_t nBitsE, int16_t nBitsF, int16_t nE, int16_t nF)
{
    if (nBitsE + nBitsF > 15)
    {
        return 0; // Devuelve error si la representación Q(nBitsE,nBitsF) no es válida para 32 bits
    }
    int16_t buffer = 10;
    char entrada[buffer];
    pedirEntrada(entrada, nE, nF);

    dataString arreglo;

    char negativo; // Flag Negativo se usa al expresar en hexa
    while (!verificarEntrada(entrada, &arreglo, &negativo, nE, nF))
    {
        pedirEntrada(entrada, nE, nF);
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
    if ((nBitsE + nBitsF) > 15)
    {
        printf("salio suma\n");
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
            printf("salio validacion rango entero\n");
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
            printf("salio validacion rango entero\n");
            return 0;
        }
    }

    *resultado = (int16_t)resulEntero;
    *resultado = *resultado << nBitsF;
    *resultado = *resultado | resulFraccion;

    if ((negativo) && (resultado != 0))
    {
        *resultado = ~(*resultado);
        (*resultado)++;
    }

    return 1;
}

// --- FIN METODOS 16 BITS

// --- METODOS 32 BITS

int16_t printInDecimal_32(int32_t resul, int16_t nBitsE, int16_t nBitsF) // Recibe la representacion Q(nBitsE,nBitsF) del valor guardado en resul y lo imprime en formato decimal +-eee.ffff
{
    if (nBitsE + nBitsF > 31)
    {
        return 0; // Devuelve error si la representación Q(nBitsE,nBitsF) no es válida para 32 bits
    }
    // Mascaras para ver el bit de signo , parte entera , parte fraccionaria y variables auxiliares.
    uint32_t aux = resul;
    int32_t mascaraE, mascaraF;
    int32_t mascaraSigno = 0x80000000;
    int32_t parteFraccionaria, parteEntera;

    if ((aux & mascaraSigno) == 0)
    {
        // Ahora me quedo con la parte entera
        mascaraF = (1 << nBitsF) - 1;
        mascaraE = 0x7FFFFFFF - mascaraF;
    }
    else
    {
        printf("-"); // Imprimo el menos
        // Invierto los bits por ser CA2 y al ya haber imprimido el signo  en vez de restarle la resolucion se la sumo
        aux = ~aux + 1; // Sumo uno ya que como tengo toda la variable en 16 bits al sumarle 1 es como que le estoy sumando la resolucion que luego interpretare por separado
        // Ya tengo el valor en BSS para poder imprimir , trabajo con la Parte entera
        mascaraF = (1 << nBitsF) - 1;
        mascaraE = 0xFFFFFFFF;
    }

    parteEntera = (mascaraE & aux) >> nBitsF;
    printf("%d.", parteEntera);
    // Parte fraccionaria
    parteFraccionaria = mascaraF & aux;

    int32_t nroImprimir;
    int32_t j = 10;
    for (size_t i = 1; i < 5; i++, j = j * 10)
    {
        nroImprimir = (parteFraccionaria * j / (1 << nBitsF)) % 10;
        printf("%d", nroImprimir);
    }
    printf("\n");

    return 1;
}

// Ingresa un número en representación en punto fijo Q(nBitsE,nBitsF) con un espacio de 32bits
// y la cantidad de digitos decimales enteros y fraccionarios de la entrada
int32_t ingresarEnDecimal_32(int32_t *resultado, int16_t nBitsE, int16_t nBitsF, int16_t nE, int16_t nF)
{
    if (nBitsE + nBitsF > 31)
    {
        return 0; // Devuelve error si la representación Q(nBitsE,nBitsF) no es válida para 32 bits
    }
    int16_t buffer = 10;
    char entrada[buffer];
    pedirEntrada(entrada, nE, nF);

    dataString arreglo;

    char negativo; // Flag Negativo se usa al expresar en hexa
    while (!verificarEntrada(entrada, &arreglo, &negativo, nE, nF))
    {
        pedirEntrada(entrada, nE, nF);
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
    int16_t i;
    int16_t fin = (arreglo->posPunto) - (arreglo->cantEnteros);
    int16_t multiplicador = 1;
    int16_t valor;
    int64_t resulEntero = 0;
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

    *resultado = (int32_t)resulEntero;
    *resultado = *resultado << nBitsF;
    *resultado = *resultado | resulFraccion;

    if ((negativo) && (resultado != 0))
    {
        *resultado = ~(*resultado);
        (*resultado)++;
    }

    return 1;
}

// --- FIN METODOS 32 BITS
