Proceso multiplicar
	
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
	
	Escribir "";
	
	Escribir "Inserte la fila (iniciando desde 0) : ";
	Leer capturaUno;
	
	Escribir "Inserte la columna (iniciando desde 0): ";
	Leer capturaDos;
	
	Escribir "",matriz1[capturaUno,capturaDos];

FinProceso