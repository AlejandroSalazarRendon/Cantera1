Proceso matriz
	
	Definir x,numeroX,contador,controlador Como Entero;
	Definir i,j Como Entero;	
	Definir matriz1 Como Entero;
	Dimension matriz1[4,5];
	
	
	matriz1[0,0]<-01;
	matriz1[0,1]<-02;
	matriz1[0,2]<-03;
	matriz1[0,3]<-04;
	matriz1[0,4]<-05;
	
	matriz1[1,0]<-06;
	matriz1[1,1]<-07;
	matriz1[1,2]<-08;
	matriz1[1,3]<-09;
	matriz1[1,4]<-10;
	
	matriz1[2,0]<-11;
	matriz1[2,1]<-12;
	matriz1[2,2]<-13;
	matriz1[2,3]<-14;
	matriz1[2,4]<-15;
	
	matriz1[3,0]<-16;
	matriz1[3,1]<-17;
	matriz1[3,2]<-18;
	matriz1[3,3]<-19;
	matriz1[3,4]<-20;
	
	Escribir "Matriz Antes ";
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			Escribir " ",matriz1[i,j]Sin Saltar;
		FinPara
		Escribir "";
		j<-0;
	FinPara
	
	Escribir "Matriz Después";
	//Condicional que diga que si es 1 empezar de adelante atras y viceversa
	
	controlador<-0;
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		
		Si controlador = 0 o controlador=2 Entonces
			Para j<-0 Hasta 4 Con Paso 1 Hacer
				Escribir " ",matriz1[i,j]Sin Saltar;
			FinPara
			j<-4;
		SiNo
			Si controlador = 1 o controlador = 3 Entonces
				Para j<-4 Hasta 0 Con Paso -1 Hacer
					Escribir " ",matriz1[i,j]Sin Saltar;
				FinPara
				j<-0;
			FinSi
		FinSi
		Escribir "";
		controlador<-controlador+1;
		
	FinPara
	Escribir "";
FinProceso
