Proceso arbol
	Definir contador,espacios,c_espacios Como Entero;
	Definir signo,tab Como Caracter;
	Definir i,j Como Entero;
	contador <- 0;
	signo <- "*";
	espacios <- 10;
	c_espacios <- 1;
	tab <- "";
	i <- 1;
	Escribir  "           *     ";
	
	Repetir
		//primer ciclo
		Repetir
			signo <- Concatenar(signo,"*");
			contador <- contador+1;
		Hasta Que contador > i
		//Segundo ciclo
		Repetir
			tab <- Concatenar(tab," ");
			c_espacios <- c_espacios+1;
		Hasta Que c_espacios > espacios
		
		Escribir tab,signo;
		contador <- contador -1 ;
		espacios <- espacios -1 ;
		c_espacios <- 1;
		tab <- "";
		i <- i+1;
	Hasta Que i>10 
	
	i <- 0;
	Repetir
		Escribir "          ***";
		i<-i+1;
	Hasta Que i>=2
	
	i<-0;
	Repetir
		Escribir "         *****";
		i<-i+1;
		Si i==1 Entonces
			Escribir "        *******";
		FinSi
		
	Hasta Que i>=1
FinProceso