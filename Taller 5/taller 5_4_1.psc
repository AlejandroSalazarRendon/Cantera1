Proceso ImprimirVector
    Definir vectores Como Entero;
    Dimension vectores[5];
    LlenarVector(vectores);
    Imprimir(vectores);
FinProceso

SubProceso  LlenarVector(vectores Por Referencia)
	Definir indice Como Entero;
		Para indice <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir "Ingrese un número para la posición [", indice, "]: ";
			Leer vectores[indice];
		FinPara
FinSubProceso


SubProceso  Imprimir(vectores Por referencia)
	Definir indice Como Entero;
		Para indice <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir "[", indice, "] = ", vectores[indice];
		FinPara
FinSubProceso



