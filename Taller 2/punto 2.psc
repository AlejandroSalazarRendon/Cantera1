Proceso datos
	Definir edad Como Entero;
	
	Escribir "�Cu�l es tu edad?";
	Leer edad;
	
	Si edad < 18 Y edad >= 0 Entonces
		Escribir "Usted a�n es un ni�o(a)";
	SiNo
		Si edad >= 18 y edad <= 120 Entonces
			Escribir "";
		SiNo
			Escribir "Edad no v�lida";
		FinSi
	FinSi
	
FinProceso