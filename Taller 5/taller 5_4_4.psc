Proceso T4p4
    Definir matriz, centinela,i,j Como Entero;
    Dimension matriz[4,5];
    
    centinela <- 0;
    
    llenarMatriz(matriz);
	matrizAntes(matriz);
    
    Para i<-0 Hasta 3 Con Paso 1 Hacer
		
		Si centinela  = 0 o centinela =2 Entonces
			Para j<-0 Hasta 4 Con Paso 1 Hacer
				Escribir " ",matriz[i,j]; Sin Saltar;
			FinPara
			j<-4;
		SiNo
			Si centinela = 1 o centinela = 3 Entonces
				Para j<-4 Hasta 0 Con Paso -1 Hacer
					Escribir " ",matriz[i,j]; Sin Saltar;
				FinPara
				j<-0;
			FinSi
		FinSi
		Escribir "";
		centinela<-centinela+1;
		
    FinPara
    
    Escribir "";
FinProceso

SubProceso matrizAntes(matriz)
	Definir i,j Como Entero;
	Escribir "Matriz Antes ";
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			Escribir " ",matriz[i,j]Sin Saltar;
		FinPara
		Escribir "";
		j<-0;
	FinPara
	
	Escribir "";
	Escribir "Matriz Después";
FinSubProceso

SubProceso  llenarMatriz(matriz)
    Definir i,j Como Entero;
    Para i<-0 Hasta 3 Con Paso 1 Hacer
        Para j<-0 Hasta 4 Con Paso 1 Hacer
            matriz[i,j] <- i*5 + j + 1;
        FinPara
    FinPara
FinSubProceso