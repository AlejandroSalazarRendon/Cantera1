Proceso taller
	
	Definir opcion Como Entero;
	Definir horaDeIngreso Como Caracter;
	Definir observaciones Como Caracter;
	Definir horaDeSalida Como Caracter;
	Definir novedades Como Caracter;
	Definir arreglos Como Entero;
	Definir arreglosMecanico Como Caracter;
	Escribir "Bienvenido a el taller de motos El maquinista ";
	Escribir "----------------------------------------------";
	
	//Registro de ingreso al taller
	Escribir "Hora de ingreso :";
	Leer horaDeIngreso;
	
	//Observaciones por parte del cliente
	Escribir "Observaciones del cliente : ";
	Leer observaciones;
	
	//Registro de salida del taller con las novedades
	Escribir"Hora de salida :";
	Leer horaDeSalida;
	
	//novedades
	Escribir "Novedades : ";
	Leer novedades;
	
	Limpiar Pantalla;
	
	//Arreglos hechos por el mecanico en caso de que se requiera inventariar
	Escribir "Hay arreglos hechos por el mecanico";
	Escribir "Opcion 1: Si";
	Escribir "Opcion 2: No";
	Leer arreglos;
	
	Si arreglos == 1 Entonces
		Escribir "Arreglos hechos por el mecanico: ";
		Leer  arreglosMecanico;
		Limpiar Pantalla;
		//Traer toda la informacion aqui + arreglosMecanico
		
		Escribir "Hora de ingreso :";
		Escribir horaDeIngreso;
		
		Escribir "Observaciones del cliente : ";
		Escribir  observaciones;
		
		Escribir"Hora de salida :";
		Escribir  horaDeSalida;
		
		Escribir "Novedades : ";
		Escribir novedades;
		
		Escribir "¿Qué arreglos hizo el mecanico?";
		Escribir arreglosMecanico;
		
		
	SiNo
		Limpiar Pantalla;
		Escribir "Hora de ingreso :";
		Escribir horaDeIngreso;
		
		Escribir "Observaciones del cliente : ";
		Escribir  observaciones;
		
		Escribir"Hora de salida :";
		Escribir  horaDeSalida;
		
		Escribir "Novedades : ";
		Escribir novedades;
		
		Escribir "No se agrego ningun arreglo hecho por el mecanico";
		
	FinSi
FinProceso