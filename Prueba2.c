/*Escriba un programa en lenguaje de programación C que permita el ingreso
de un valor expresado en notación decimal ±eee.ffff y lo convierta a
representación en punto fijo de 16 bits Q(7,8). El programa debe validar la
entrada y determinar si el número ingresado está dentro del rango
representable. La salida debe expresarse en Hexadecimal (0xHHHH)

Cantidad entera representable = 127
Cantidad fraccionaria representable = 0.9375 -> 255
*/

//token: 
//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

#include <stdio.h>
#include <string.h>


typedef struct{ 
    unsigned int entero;
    unsigned int fraccion;
}numeroPF;

typedef struct{
    unsigned int posPunto;
    unsigned int cantEnteros;
    unsigned int cantFraccion;
}dataString;

int verificarEntrada(char *entrada, size_t tamaño, dataString * arreglo, int * negativo);
int esNumero(char caracter);
int pedirEntrada(char *entrada);
int obtenerNumeros(numeroPF * num, char * entrada, int tamaño, dataString * arreglo);
int validarRango(numeroPF * num);
int expresionHexadecimal(numeroPF * num, int negativo);

int main()
{
    printf("\nLos valores validos son");
    printf("\nEnteros = 127");
    printf("\nFraccionaros = 255\n");

    int buffer = 10;//
    char entrada[buffer];
    pedirEntrada(entrada);
    size_t tamaño = strlen(entrada);
    
    dataString arreglo;
    int negativo; //Flag Negativo se usa al expresar en hexa
    while (!verificarEntrada(entrada , tamaño, &arreglo,&negativo)){
        pedirEntrada(entrada);
        tamaño = strlen(entrada);
    }

    numeroPF num;
    
    obtenerNumeros(&num, entrada, tamaño, &arreglo); //De string a Integer

    
    printf("\nEl numero en parte entera= %d ", num.entero);
    printf("\nEl numero en parte fraccionaria= %d ",num.fraccion);
    
    if (validarRango(&num)){
        printf("\nRango Valido\n");
        expresionHexadecimal(&num,negativo);
    }else printf("\nNo es rango válido");

    return 0;
}

int esNumero (char caracter){
    if ((caracter <= '9') && (caracter >= '0')) return 1;
    else return 0;
}

int pedirEntrada(char * entrada){
    printf("\nIngrese un valor decimal ±eee.ffff\n");
    scanf(" %9s",entrada);  //Restringe los primeros 9 digitos
}

int verificarEntrada(char *entrada , size_t tamaño, dataString * arreglo,int * negativo){ 
    
    int i;
    *negativo=0;

    if ((entrada[0] == '-')||(entrada[0] == '+')){ //Si tiene un +- no se procesa ese caracter
        if (entrada[0] == '-'){                     //Caso de ser - se guarda flag
            *negativo=1;
        }
        i = 1;
    }else if (esNumero(entrada[0])){                //Si no tiene +- se procesa completo
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

    for ( i; i < tamaño; i++)       //Se procesa string
    {   
        int es_num = esNumero(entrada[i]);

        if (!es_num) {                              // No es numero
            if ((entrada[i]=='.')&&(!puntoFijo))    // Único caracter válido es un punto
            {
                arreglo->posPunto = i;
                puntoFijo = 1;                      //Se tiene en cuenta posición del punto
            }else {
                printf("\nEntrada Invalida"); 
                printf("\nSolo puede haber un punto dentro del numero"); 
                return 0;
            }
        }else {                                     // Es numero
            if (puntoFijo) {                        // A partir de la posición del punto se analiza Enteros y Fracciones
                cantFraccion++;                     
            }else cantEnteros++;
        }
    }

    if ((cantEnteros>3)||(cantEnteros<1)||(cantFraccion>4)||(cantFraccion<1)) {   // Con lo anterior, se valida el rango
        printf("\nEntrada Invalida");
        printf("\n  Debe haber entre 1-3 valores enteros");
        printf("\n  Debe haber como entre 1-4 valores fraccionarios"); 
        printf("\n  Debe haber un punto fijo"); 
        return 0;
    }
    arreglo->cantEnteros = cantEnteros;
    arreglo->cantFraccion = cantFraccion;
    printf("\n cantEnteros = %d",cantEnteros);
    printf("\n cantFraccion = %d\n", cantFraccion);
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
    num->fraccion = 0;
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

int expresionHexadecimal(numeroPF * num, int negativo){
    __int16_t numero = ((num->entero)<<8) + num->fraccion;
    if ((negativo)&&(numero != 0)){
        numero = numero + (1<<15);
    }

    printf("\n0x%X \n", numero & 0xFFFF);
}