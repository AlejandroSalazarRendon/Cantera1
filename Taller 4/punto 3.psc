Proceso primos
	
	Definir x,numeroX,contador Como Entero;
	Definir vector Como Entero;
	Dimension vector[1];
	
	
	
	Para numeroX <- 1 Hasta 1000 Con Paso 1 Hacer
		x<-1;
		contador <- 0;
		Mientras x<= numeroX Hacer
			Si numeroX mod x == 0 Entonces
				contador <- contador+1;
			FinSi
			x<-x+1;
		FinMientras
		
		si contador == 2 Entonces
			vector[0] <- numeroX;
			Escribir "El numero : ",vector[0]," es primo";
		FinSi
	FinPara
	
FinProceso
