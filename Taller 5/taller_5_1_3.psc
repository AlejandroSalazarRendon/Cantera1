SubProceso respuesta<-nombres()
	Definir respuesta Como Caracter;
	Escribir "¿Cuál es tu nombre?";
	Leer respuesta;
FinSubProceso

SubProceso respuesta<-apellidos()
	Definir respuesta Como Caracter;
	Escribir"¿Cuales son tus apellidos?";
	Leer respuesta;
FinSubProceso

SubProceso respuesta<-edades(nombre,apellido)
	Definir respuesta Como Entero;
	Escribir "¿Cuál es tu edad?";
	Leer respuesta;
	
	Si respuesta < 0 o respuesta >= 120 Entonces
		Escribir "Edad inválida";
	SiNo
		Si respuesta >= 18 Entonces
			Escribir nombre," ",apellido,", Usted es mayor de edad, por lo tanto, puede entrar a la fiesta";
		SiNo
			Escribir nombre," ",apellido,", Usted es menor de edad, por lo tanto, no puede entrar a la fiesta";
			Escribir "Por favor devuélvase a su casa.";
		FinSi
	FinSi
FinSubProceso

Proceso funciones
	Definir nombre,apellido Como Caracter;
	Definir edad Como Entero;
	nombre<-nombres();
	apellido<-apellidos();
	edad <- edades(nombre,apellido);
FinProceso