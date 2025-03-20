/*Escriba un programa en lenguaje de programación C que permita el ingreso
de un valor expresado en notación decimal ±eee.ffff y lo convierta a
representación en punto fijo de 16 bits Q(7,8). El programa debe validar la
entrada y determinar si el número ingresado está dentro del rango
representable. La salida debe expresarse en Hexadecimal (0xHHHH)

Cantidad entera representable = 127
Cantidad fraccionaria representable = 0.9375 -> 255
*/

#include <stdio.h>
#include <string.h>


typedef struct{ 
    unsigned int signo : 1;
    unsigned int entero;
    unsigned int fraccion;
}numeroPF;

typedef struct{
    unsigned int posPunto;
    unsigned int cantEnteros;
    unsigned int cantFraccion;
}dataString;

int verificarEntrada(char *entrada, size_t tamaño, dataString * arreglo);
int esNumero(char caracter);
int pedirEntrada(char *entrada);
int obtenerNumeros(numeroPF * num, char * entrada, int tamaño, dataString * arreglo);
int validarRango(numeroPF * num);

int main()
{
    printf("\nLos valores validos son");
    printf("\nEnteros = 127");
    printf("\nFraccionaros = 255");
    int buffer = 100;//
    char entrada[buffer];
    pedirEntrada(entrada);
    size_t tamaño = strlen(entrada);
    
    dataString arreglo;

    while (!verificarEntrada(entrada , tamaño, &arreglo)){
        pedirEntrada(entrada);
        tamaño = strlen(entrada);
    }

    numeroPF num;
    
    obtenerNumeros(&num, entrada, tamaño, &arreglo);

    
    printf("\nEl numero en parte entera= %d ", num.entero);
    printf("\nEl numero en parte fraccionaria= %d ",num.fraccion);
    
    if (validarRango(&num)){
        printf("\nSi wachin esta re piola el num");
    }else printf("\nNa wacho pedilo");

    return 0;
}

int esNumero (char caracter){
    if ((caracter <= '9') && (caracter >= '0')) return 1;
    else return 0;
}

int pedirEntrada(char * entrada){
    printf("\nIngrese un valor decimal ±eee.ffff\n");
    scanf(" %9s",entrada);  
}

int verificarEntrada(char *entrada , size_t tamaño, dataString * arreglo){
    if (tamaño <= 0){
        printf("\nEntrada Invalida");
        printf("\nTamaño no admitido");
        return 0;
    } 

    int i;

    if ((entrada[0] == '-')||(entrada[0] == '+')){
        i = 1;
    }else if (esNumero(entrada[0])){
        i = 0;
    }else {
        printf("\nEntrada Invalida"); 
        printf("\nDebe ingresar +- o un número en la primer celda");
        return 0;
    }

    int puntoFijo = 0;
    arreglo->posPunto=0;
    int cantEnteros = 0;
    int cantFraccion = 0;

    for ( i; i < tamaño; i++)
    {   
        int es_num = esNumero(entrada[i]);

        if (!es_num) {  
            if ((entrada[i]=='.')&&(!puntoFijo))
            {
                arreglo->posPunto = i;
                puntoFijo = 1;
            }else {
                printf("\nEntrada Invalida"); 
                printf("\nSolo puede haber un punto dentro del numero"); 
                return 0;
            }
        }else {
            if (puntoFijo) {
                cantFraccion++;
            }else cantEnteros++;
        }
        if ((cantEnteros>3)||(cantEnteros<1)||(cantFraccion>4)) {
            printf("\nEntrada Invalida");
            printf("\nDebe haber como máximo 3 valores enteros");
            printf("\nDebe haber como máximo 4 valores fraccionarios"); 
            return 0;
        }
    }

    arreglo->cantEnteros = cantEnteros;
    arreglo->cantFraccion = cantFraccion;
    printf("\nNúmero Valido.");
    return 1;
    
}

int obtenerNumeros(numeroPF * num, char * entrada, int tamaño, dataString * arreglo){
    int i;
    int fin = (arreglo->posPunto) - (arreglo->cantEnteros);
    int multiplicador=1;
    int valor;
    for ( i = arreglo->posPunto-1; i >= fin; i--)
    {
        valor = entrada[i]-48; //Diferencia Ascii a Integer
        num->entero = num->entero + multiplicador * valor;
        multiplicador = multiplicador * 10;
    }

    multiplicador = 1;

    for ( i = tamaño-1; i > (arreglo->posPunto); i--){
        valor = entrada[i]-48; //Diferencai Ascii a Integer
        num->fraccion = (num->fraccion) + multiplicador * valor;
        multiplicador = multiplicador * 10;
    }
}

int validarRango(numeroPF * num){
    if ((num->entero<128)&&(num->fraccion<256)){
        return 1;
    }else return 0;
}