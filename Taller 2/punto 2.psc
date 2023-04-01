Proceso datos
	Definir edad Como Entero;
	
	Escribir "¿Cuál es tu edad?";
	Leer edad;
	
	Si edad < 18 Y edad >= 0 Entonces
		Escribir "Usted aún es un niño(a)";
	SiNo
		Si edad >= 18 y edad <= 120 Entonces
			Escribir "";
		SiNo
			Escribir "Edad no válida";
		FinSi
	FinSi
	
FinProceso