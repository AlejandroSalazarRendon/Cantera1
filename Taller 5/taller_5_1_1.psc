SubProceso respuesta<-edades()
	Definir respuesta Como Entero;
	Escribir "¿Cuál es tu edad?";
	Leer respuesta;
	
	Si respuesta >= 18 Y respuesta <= 120 Entonces
		Escribir "Usted es mayor de edad";
	SiNo
		Si respuesta < 18 y respuesta >= 0 Entonces
			Escribir "";
		SiNo
			Escribir "Edad no válida";
		FinSi
	FinSi
	
FinSubProceso


Proceso funciones
	
	Definir edad Como Entero;
	edad <- edades();
	
FinProceso