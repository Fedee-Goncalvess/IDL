#ifndef GRUPO17FUNCIONES_H
#define GRUPO17FUNCIONES_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

int16_t ingresarEnDecimal_16(int16_t *resultado, int16_t nBitsE, int16_t nBitsF, int16_t nDigE, int16_t nDigF);
int16_t printInDecimal_16(int16_t resul, int16_t nBitsE, int16_t nBitsF);
int32_t ingresarEnDecimal_32(int32_t *resultado, int16_t nBitsE, int16_t nBitsF, int16_t nDigE, int16_t nDigF);
int16_t printInDecimal_32(int32_t resul, int16_t nBitsE, int16_t nBitsF);

#endif
