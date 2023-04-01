Proceso miPrimerVector
	
	Definir indice Como Entero;
	Definir vector Como Entero;
	Definir numero1,numero2,numero3,numero4,numero5 Como Entero;
	Dimension vector[5];
	
	Para indice <- 0 Hasta  4 Con Paso 1 Hacer
		Escribir "Ingrese un numero para la posicion ",indice,"";
		Leer vector[indice];
	FinPara
	
	Para indice<-0 Hasta 4 Con Paso 1 Hacer
		Escribir "[",indice,"]"," = ",vector[indice];
	FinPara
	
FinProceso
