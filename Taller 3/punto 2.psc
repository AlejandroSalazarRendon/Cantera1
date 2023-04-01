Proceso invertido
	
	Definir contador,espacios,c_espacios,prueba,cont,avanzar,cont_2 Como Entero;
	Definir signo,tab Como Caracter;
	Definir i,j Como Entero;
	contador <- 9;
	signo <- "*";
	espacios <- 10;
	c_espacios <- 1;
	prueba<-0;
	tab <- "";
	cont <- 0;
	cont_2 <- 1;
	avanzar<-1;
	i <- 0;
	j <- 9;
	Escribir "           *";
	Mientras i >= 0 && i<= 9 Hacer
		Mientras j<=9 && j>=0 Hacer
			//Restar un tab y poner un *
			Mientras prueba<avanzar  Hacer
				signo <- Concatenar(signo,"*");
				prueba <- prueba +1;
			FinMientras
			tab <- Concatenar(tab," ");
			j<-j-1;
		FinMientras
		Escribir tab,signo;
		contador <- contador -1 ;
		cont <- cont + 1 ;
		avanzar <- avanzar+1;
		prueba <- cont;
		tab <- "";
		i <- i+1;
		j <- contador;
	FinMientras
FinProceso
