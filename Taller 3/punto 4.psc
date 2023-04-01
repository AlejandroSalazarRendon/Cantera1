Proceso multiplicar
	Definir numero_1,j,resultado Como Entero;
	Definir i Como Entero;
	Escribir "¿Qué numero quieres multiplicar?";
	Leer numero_1;
	j<-1;
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		resultado<-numero_1*i;
		Escribir j,"x",numero_1,"=",resultado;
		j<-j+1;
	FinPara
	
FinProceso