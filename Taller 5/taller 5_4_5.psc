Proceso TAp52
	Definir fila1,columna1 Como Entero;
	Definir matriz,matriz1 Como Entero;
	Dimension matriz[11,11];
	Dimension matriz1[10,10];
	Definir fila, columna, resultado Como Entero;
	
	Mostrar();
	CalcularValores(matriz);
	
	Escribir "Inserte la fila (0-9): ";
	Leer fila;
	fila1 <- fila+1;
	Escribir "Inserte la columna (0-9): ";
	Leer columna;
	columna1 <- columna+1;
	resultado <- matriz[fila+1, columna+1];
	

	
	Escribir "El resultado de la celda (", fila1-1, ", " ,columna1-1,") es:" ,resultado;
	
FinProceso

SubProceso Mostrar()
	
	Definir matriz1 Como Entero;
	Definir k,l,i,j Como Entero;
	Definir capturaUno,capturaDos Como Entero;
	
	Dimension matriz1[10,10];
	k<-1;
	l<-1;
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			matriz1[i,j] <- k*l;
			l<-l+1;
		FinPara
		l<-1;
		k<-k+1;
	FinPara
	
	
	k<-1;
	l<-1;
	Escribir " |     0    |"," |    1     |"," |    2     |"," |    3     |"," |    4     |"," |    5     |"," |    6     |"," |    7     |"," |    8     |"," |    9       |";
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			Escribir " |",l,"*",k," = ",matriz1[i,j],"  "," |"Sin Saltar;
			l<-l+1;
		FinPara
		Escribir "";
		k<-k+1;
		l<-1;
	FinPara
FinSubProceso

SubProceso CalcularValores(matriz)
	Definir fila Como Entero;
	Definir columna Como Entero;
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			matriz[fila,columna] <- fila * columna;
		FinPara
	FinPara
	
FinSubProceso
