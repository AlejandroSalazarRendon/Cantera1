Proceso PAp3
	Definir x,numeroX,contador Como Entero;
	Definir vector Como Entero;
	Dimension vector[1001];
	
	Escribir " números primos del 1 al 1000 :";
	
	Para numeroX <- 1 Hasta 1001 Con Paso 1 Hacer
		si esPrimo(numeroX) Entonces
			vector[0] <- numeroX;
			Escribir "El numero : ",vector[0]," es primo";
		FinSi
	FinPara
FinProceso

SubProceso  respuesta<-esPrimo(numeroX)
	Definir i,cont Como Entero;
	Definir respuesta Como Logico;
	i<-1;
	cont <- 0;
	Mientras i<= numeroX Hacer
		Si numeroX mod i == 0 Entonces
			cont <- cont+1;
		FinSi
		i<-i+1;
	FinMientras
	
	si cont == 2 Entonces
		respuesta<- Verdadero;
	sino 
		respuesta<- Falso;
	FinSi
FinSubProceso
