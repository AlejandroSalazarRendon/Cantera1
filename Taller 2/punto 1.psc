Proceso datos
	Definir edad Como Entero;
	
	Escribir "�Cu�l es tu edad?";
	Leer edad;
	
	Si edad >= 18 Y edad <= 120 Entonces
		Escribir "Usted es mayor de edad";
	SiNo
		Si edad < 18 y edad >= 0 Entonces
			Escribir "";
		SiNo
			Escribir "Edad no v�lida";
		FinSi
	FinSi

FinProceso
