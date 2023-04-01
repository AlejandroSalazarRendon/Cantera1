Proceso datos
	Definir nombre,apellidos Como Caracter;
	Definir edad Como Entero;
	
	Escribir "¿Cuál es tu nombre?";
	Leer nombre;
	
	Escribir"¿Cuales son tus apellidos?";
	Leer apellidos;
	
	Escribir "¿cuál es tu edad?";
	Leer edad;
	
	Si edad >= 18 y edad < 130 Entonces
		Escribir nombre," ",apellidos,", Usted es mayor de edad, por lo tanto, puede entrar a la fiesta";
	SiNo
		Si edad >=0 y edad < 18 Entonces
			Escribir nombre," ",apellidos,", Usted es menor de edad, por lo tanto, no puede entrar a la fiesta";
			Escribir "Por favor devuélvase a su casa.";
		SiNo
			Escribir "Edad no válida";
		FinSi
	FinSi
	
FinProceso
