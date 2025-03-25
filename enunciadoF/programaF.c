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
#include <stdint.h>

typedef struct{
    int16_t posPunto;
    int16_t cantEnteros;
    int16_t cantFraccion;
}dataString;

int16_t verificarEntrada(char *entrada, dataString * arreglo, char * negativo);
int16_t esNumero(char caracter);
void pedirEntrada(char *entrada);
int16_t conversionValidacion(char * entrada, dataString * arreglo, char negativo, int16_t * resultado);
int16_t validarRango(int16_t resul);

int main()
{
    printf("\nLos valores validos son");
    printf("\nEnteros = 127");
    printf("\nFraccionaros = 255\n");

    int16_t buffer = 10;//
    char entrada[buffer];
    pedirEntrada(entrada);
    
    dataString arreglo;
    
    char negativo; //Flag Negativo se usa al expresar en hexa
    while (!verificarEntrada(entrada, &arreglo,&negativo)){
        pedirEntrada(entrada);
    }
    
    int16_t resultado;
    if (conversionValidacion(entrada, &arreglo, negativo, &resultado)){     //De string a Integer y validacion
        printf("\n0x%X",resultado & 0xFFFF);
    }else printf("\nNo es rango válido");
        

    return 0;
}

int16_t esNumero (char caracter){
    if ((caracter <= '9') && (caracter >= '0')) return 1;
    else return 0;
}

void pedirEntrada(char * entrada){
    printf("\nIngrese un valor decimal ±eee.ffff\n");
    scanf(" %9s",entrada);  //Restringe los primeros 9 digitos
}

int16_t verificarEntrada(char *entrada, dataString * arreglo,char * negativo){ 
    
    int16_t i;
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

    arreglo->posPunto=0;
    int16_t cantEnteros = 0;
    int16_t cantFraccion = 0;

    for ( i; i < strlen(entrada); i++)       //Se procesa string
    {   
        int16_t es_num = esNumero(entrada[i]);

        if (!es_num) {                              // No es numero
            if ((entrada[i]=='.')&&(!(arreglo->posPunto)))    // Único caracter válido es un punto
            {
                arreglo->posPunto = i;              //Se tiene en cuenta posición del punto
            }else {
                printf("\nEntrada Invalida"); 
                printf("\nSolo puede haber un punto dentro del numero"); 
                return 0;
            }
        }else {                                     // Es numero
            if (arreglo->posPunto) {                        // A partir de la posición del punto se analiza Enteros y Fracciones
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
    return 1;
    
}

int16_t conversionValidacion(char * entrada, dataString * arreglo, char negativo, int16_t * resultado){
    int16_t i;
    int16_t fin = (arreglo->posPunto) - (arreglo->cantEnteros);
    int16_t multiplicador=1;
    int16_t valor;
    int16_t resulEntero = 0;
    for ( i = arreglo->posPunto-1; i >= fin; i--)
    {
        valor = entrada[i]-48; //Diferencia Ascii a Integer
        resulEntero = resulEntero + multiplicador * valor; 

        if (((resulEntero > 127) && (!negativo)) || (resulEntero>128)) { //Validación de rango
            return 0;
        }

        multiplicador = multiplicador * 10;
    }


    multiplicador = 1000;
    int16_t conversion = 0;
    for ( i = (arreglo->posPunto)+1; i < strlen(entrada); i++){
        valor = entrada[i]-48; //Diferencai Ascii a Integer
        conversion = conversion + multiplicador * valor;
        multiplicador = multiplicador / 10;
        
    }
    
    int16_t resulFraccion = 0;
    for (i = 7; i >= 0; i--)    //Conversión de Fracción a Binario
    {
        conversion=conversion<<1;
        if (conversion>=10000) {
            resulFraccion = resulFraccion | 1<<i;
            conversion=conversion-10000;
        }

        if (resulFraccion>255){ //Validación de rango
            return 0;
        }
    }
    

    *resultado = resulEntero;
    *resultado = *resultado<<8;           
    *resultado = *resultado | resulFraccion;

    if ((negativo)&&(resultado != 0)){
        *resultado = ~(*resultado);
        (*resultado)++;
    }
    
    return 1;
}

int16_t validarRango(int16_t resul){
    printf("\n%d < 32769",resul);
    if ((resul<0b111111111111111))
    {
        return 1;
    }else return 0;
}
