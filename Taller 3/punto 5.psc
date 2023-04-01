Proceso menu

	Definir opcion,i,bandera,controlNombre,prueba Como Entero;
	Definir nombre Como Caracter;
	
	Escribir "Menú de usuario";
	Escribir "***************";
	
	opcion <- 1;
	bandera <- 0;
	controlNombre <- 0;
	prueba <-0;
	
	Mientras bandera <> 1 Hacer
		
		Si prueba == 0 Entonces
			Escribir "Selecione una opción del Menú";
			Escribir "1. Capturar nombre";
			Escribir "2. Saludar persona";
			Escribir "3. Salir del sistema";
			Leer opcion;
			
			Si opcion == 1 Entonces
				Escribir "¿Cuál es tu nombre?";
				Leer nombre;
				controlNombre <- 1;
				prueba <- 1;
				Limpiar Pantalla;
			SiNo
				Si opcion == 2 Entonces
					Si controlNombre == 0 Entonces
						Limpiar Pantalla;
						Escribir "";
						Escribir "Porfavor digita primero tu nombre";
						Escribir "";
						;
					SiNo
						Escribir "Hola, ",nombre, ",Bienvenido ";
						Escribir "";
					FinSi
					
				FinSi
				
				Si opcion == 3 Entonces
					Escribir "Saliendo del sistema ";
					bandera <- 1;
				FinSi
			FinSi
		SiNo
			Escribir "Selecione una opción del Menú";
			Escribir "2. Saludar persona";
			Escribir "3. Salir del sistema";
			Leer opcion;
			
			Si opcion == 1 Entonces
				Escribir "¿Cuál es tu nombre?";
				Leer nombre;
				controlNombre <- 1;
				Limpiar Pantalla;
			SiNo
				Si opcion == 2 Entonces
					Si controlNombre == 0 Entonces
						Limpiar Pantalla;
						Escribir "Porfavor digita primero tu nombre";
						Escribir "";
						;
					SiNo
						Escribir "Hola, ",nombre, ",Bienvenido ";
						Escribir "";
					FinSi
					
				FinSi
				
				Si opcion == 3 Entonces
					Escribir "Saliendo del sistema ";
					bandera <- 1;
				FinSi
			FinSi
		FinSi
	FinMientras
FinProceso
