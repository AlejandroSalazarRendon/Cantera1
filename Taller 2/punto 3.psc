Proceso datos
	Definir nombre,apellidos Como Caracter;
	Definir edad Como Entero;
	
	Escribir "�Cu�l es tu nombre?";
	Leer nombre;
	
	Escribir"�Cuales son tus apellidos?";
	Leer apellidos;
	
	Escribir "�cu�l es tu edad?";
	Leer edad;
	
	Si edad >= 18 y edad < 130 Entonces
		Escribir nombre," ",apellidos,", Usted es mayor de edad, por lo tanto, puede entrar a la fiesta";
	SiNo
		Si edad >=0 y edad < 18 Entonces
			Escribir nombre," ",apellidos,", Usted es menor de edad, por lo tanto, no puede entrar a la fiesta";
			Escribir "Por favor devu�lvase a su casa.";
		SiNo
			Escribir "Edad no v�lida";
		FinSi
	FinSi
	
FinProceso
