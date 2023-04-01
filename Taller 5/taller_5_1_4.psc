
SubProceso respuesta<-alquilar()
	Definir respuesta Como Caracter;
	Escribir"Ingrese el nombre de la película: ";
	Leer respuesta;
	
	Limpiar Pantalla;
	Escribir "Alguilando ",respuesta,"...";
	Escribir "";
FinSubProceso

SubProceso respuesta <- listados()
	
	Escribir "Listado de peliculas disponibles: ";
	Escribir "Pelicula 1";
	Escribir "Pelicula 2";
	Escribir "Pelicula 3";
	Escribir "";
FinSubProceso


SubProceso respuesta <- recibir()
	Definir respuesta Como Caracter;
	Definir opcion Como Entero;
	Escribir "¿Desea realizar algún comentario?";
	Escribir "1. Si";
	Escribir "2. No";
	Leer  opcion;
	
	Si opcion == 1 Entonces
		Escribir "Ingrese su comentario";
		Leer respuesta;
		Escribir "";
		//Limpiar Pantalla;
		Escribir "Novedad registrada correctamente";
	SiNo
		Escribir "Gracias por confiar en nosotros";
		Escribir "";
	FinSi
	
FinSubProceso

SubProceso respuesta <- menu()
	Escribir "Video tienda para usuarios del barrio porvenir";
	Escribir "Elija una opción : ";
	Escribir "1. Alquilar película.";
	Escribir "2. Consultar peliculas disponibles.";
	Escribir "3. Recibir pelicula.";
	Escribir "4. Salir";
FinSubProceso

SubProceso respuesta <- invalida()
	Limpiar Pantalla;
	Escribir "La opción no es válida";
	Escribir "";
FinSubProceso

Proceso funciones
	Definir alquilando,listado,recibirPelicula,opciones,OtroModo Como Caracter;
	Definir edad,opcion Como Entero;
	opcion <- 0;
	
	Mientras opcion <> 4 Hacer
		
		opciones <- menu();
		leer opcion;
		
	Segun opcion Hacer
		1:
			alquilando<-alquilar();
		2:
			listado <- listados();	
		3:
			recibirPelicula <- recibir();
		4:
			Escribir "Gracias, hasta luego";
		De Otro Modo:
			OtroModo <- invalida();
	FinSegun
FinMientras
	
FinProceso