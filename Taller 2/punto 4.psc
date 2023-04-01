Proceso Tienda
	
	Definir nombrePelicula,novedad Como Caracter;
	Definir opcion,comentario Como Entero;
	
	Escribir "Video tienda para usuarios del barrio porvenir";
	Escribir "Elija una opción : ";
	Escribir "1. Alquilar película.";
	Escribir "2. Consultar peliculas disponibles.";
	Escribir "3. Recibir pelicula.";
	leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir"Ingrese el nombre de la película: ";
			Leer nombrePelicula;
			
			Limpiar Pantalla;
			Escribir "Alquilando ",nombrePelicula,"...";
			
		2:
			Escribir "Listado de peliculas disponibles: ";
			Escribir "Pelicula 1";
			Escribir "Pelicula 2";
			Escribir "Pelicula 3";
			
		3:
			Escribir "¿Desea realizar algún comentario?";
			Escribir "1. Si";
			Escribir "2. No";
			Leer  comentario;
			
			Si comentario == 1 Entonces
				Escribir "Ingrese su comentario";
				Leer novedad;
				Limpiar Pantalla;
				Escribir "Novedad registrada correctamente";
			SiNo
				Escribir "Saliendo del sistema";
			FinSi
		De Otro Modo:
			Escribir "La opción no es válida";
	FinSegun
	
FinProceso
