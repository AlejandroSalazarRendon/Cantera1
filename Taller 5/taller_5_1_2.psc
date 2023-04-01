SubProceso respuesta<-edades()
	Definir respuesta Como Entero;
	Escribir "¿Cuál es tu edad?";
	Leer respuesta;
	
	Si respuesta < 18 Y respuesta >= 0 Entonces
		Escribir "Usted aún es un niño(a)";
	SiNo
		Si respuesta >= 18 y respuesta <= 120 Entonces
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