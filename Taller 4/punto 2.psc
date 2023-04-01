Proceso arreglo
	
	Definir fila,columna,i,j,k Como Entero;
	Definir par,impar Como Entero;
	Definir n,random Como Entero;
	Definir contador Como Entero;
	Definir numeroPar,numeroImpar Como Caracter;
	Definir aleatorios Como Entero;
	Definir agregarPar,agregarImpar Como Entero;
	Dimension aleatorios[20];
	
	contador<-0;
	j<-0;
	k<-0;
	
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		
		random <- azar(100)+1;
		aleatorios[i] <- random;
		
		Si aleatorios[i] mod 2 = 0 Entonces
			
			j<-j+1;
			
		SiNo
			k<-k+1;
		FinSi
		
	FinPara
	
	Escribir "Numero de pares: ",j;
	Escribir "Numero de impares: ",k;

	Dimension par[20];
	Dimension impar[20];
	//Agregar los numeros a cada vector
	
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		//agregar un 0 en el indice del contrario
		Si aleatorios[i] mod 2 = 0 Entonces
			
			agregarPar <- aleatorios[i];
			par[i] <- agregarPar;
			impar[i] <- 0;
			j<-j+1;
			
		SiNo
			Si aleatorios[i] mod 2 <> 0 Entonces
				
				agregarImpar <- aleatorios[i];
				impar[i] <- agregarImpar;
				par[i] <- 0;
				k<-k+1;
			FinSi
		FinSi	
	FinPara
	
	Escribir "Números pares: "Sin Saltar;
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		Si par[i] <> 0 Entonces
			Escribir " ",par[i]," , "Sin Saltar;
		SiNo
			Escribir ""Sin Saltar;
		FinSi	
	FinPara
	
	
	Escribir "";
	Escribir "Números impares: "Sin Saltar;
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		Si impar[i] <> 0 Entonces
			Escribir " ",impar[i]," , "Sin Saltar;
		SiNo
			Escribir ""Sin Saltar;
		FinSi
		
	FinPara

	Escribir "";

FinProceso
