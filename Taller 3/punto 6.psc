Proceso agenda
	
	Definir opcion,contador Como Entero;
	//Numero de telefono de cada contacto
	Definir contacto1,contacto2,contacto3 Como Entero;
	//Nombre de cada contacto
	Definir nombreContacto1,nombreContacto2,nombreContacto3 Como Caracter;
	//Organizaci�n de cada contacto
	Definir organizacion1,organizacion2,organizacion3 Como Caracter;
	//Controladores
	Definir buscandoNumero,bandera Como Entero;
	
	Definir buscarTelefono,mensajeEliminar Como Entero;
	
	Definir buscador Como Logico;
	
	nombreContacto1<- "";
	nombreContacto2 <- "";
	nombreContacto3 <- "";
	
	contacto1 <- 0;
	contacto2 <- 0;
	contacto3 <- 0;
	
	organizacion1 <- "";
	organizacion2 <- "";
	organizacion3 <- "";
	
	opcion <-0;
	contador <- 1;
	bandera <- 0;
	contacto2 <- 0;
	contacto3<-0;
	buscarTelefono <- 0;
	buscador <- Falso;
	
	
	
	
	Mientras opcion <> 4 Hacer
		
		Escribir "";
		Escribir "Elija una opci�n";
		Escribir "1. �Desea agregar un contacto ?";
		Escribir "2. Buscar un contacto almacenado";
		Escribir "3. Eliminar un contacto";
		Escribir "4. Salir";
		leer opcion;
		
		Si opcion == 1 Entonces
			
			Escribir "Agregando un contacto ... ";
			Escribir "";
			
			Segun contador Hacer
				
				1:
					Escribir "Agregando contacto 1";
					Escribir "Nombre completo:";
					Leer nombreContacto1;
					Escribir "Tel�fono";
					Leer contacto1;
					Escribir "Organizaci�n : ";
					Leer organizacion1;
					contador <- contador+1;
					bandera <- 1;
					
				2:
					Escribir "Agregando contacto 2";
					Escribir "Nombre completo:";
					Leer nombreContacto2;
					Escribir "Tel�fono";
					Leer contacto2;
					buscandoNumero <- contacto2;
					Si  buscandoNumero == contacto1 Entonces
						Escribir "N�mero ya registrado";
						
						nombreContacto2 <-"";
						contacto2<- 0;
						organizacion2 <- "";
						
					SiNo
						Escribir "Organizaci�n : ";
						Leer organizacion2;
						contador <- contador+1;
						bandera <-bandera+1;
					FinSi
					buscandoNumero <- 0;
					
				3:
					Escribir "Agregando contacto 3";
					Escribir "Nombre completo:";
					Leer nombreContacto3;
					Escribir "Tel�fono";
					Leer contacto3;
					buscandoNumero <- contacto3;
					
					Si  buscandoNumero == contacto1 | buscandoNumero == contacto2 Entonces
						Limpiar Pantalla;
						Escribir "N�mero ya registrado";
						
						nombreContacto3 <-"";
						contacto3<- 0;
						organizacion3 <- "";
						
					SiNo
						Escribir "Organizaci�n : ";
						Leer organizacion3;
						contador <- contador+1;
					FinSi
					buscandoNumero <- 0;
				De Otro Modo:
					Escribir "Ya hay 3 contactos registrados";
					Escribir "";
			FinSegun
			
		SiNo
			Si opcion == 2 Entonces
				Si opcion == 2 & bandera == 0 Entonces
					Escribir "No hay usuario registrado";
				Sino 
					Escribir "";
					Escribir "Buscar contacto por n�mero de tel�fono";
					Leer buscarTelefono;
					buscador <- Falso;
					Escribir "";
					
					Mientras buscador == Falso Hacer
						
						Si bandera == 0 Entonces
							Escribir "No hay usuario registrado";
							buscador <- Verdadero;
							Limpiar Pantalla;
						SiNo
							Si buscarTelefono == contacto1 Entonces
								
								Escribir "Nombre : ",nombreContacto1;
								Escribir "Numero : ",contacto1;
								Escribir "Organizaci�n : ",organizacion1;
								buscador <- Verdadero;
							SiNo
								Si buscarTelefono == contacto2 Entonces
									Escribir "Nombre :  ",nombreContacto2;
									Escribir "Numero : ",contacto2;
									Escribir "Organizacion : ",organizacion2;
									buscador <- Verdadero;
								FinSi
								Si buscarTelefono == contacto3 Entonces
									Escribir "Nombre : ",nombreContacto3;
									Escribir "Numero : ",contacto3;
									Escribir "Organizacion : ",organizacion3;
									buscador <- Verdadero;
								FinSi
								Si buscador == Falso Entonces
									Escribir "";
									Escribir "El usuario no se ha encontrado";
									buscador <- Verdadero;
								FinSi
							FinSi
						FinSi
					FinMientras
				FinSi
			SiNo Si opcion == 3 Entonces
					Escribir "Menu de eliminar un contacto... ";
					Escribir "";
					
					buscador <- Falso;
					Mientras buscador ==  Falso Hacer
						
						Si bandera == 0 Entonces
							Escribir "No hay usuario registrado";
							buscador <- Verdadero;
						SiNo
							Escribir "";
							Escribir "Digite el telefono del usuario a eliminar";
							Leer buscarTelefono;
							Escribir "";
							
							Si buscarTelefono == contacto1 Entonces
								
								Escribir "Nombre : ",nombreContacto1;
								Escribir "Numero : ",contacto1;
								Escribir "Organizaci�n : ",organizacion1;
								
								
								Escribir "�Desea eliminarlo?";
								Escribir "1. Si";
								Escribir "2. No";
								Leer mensajeEliminar;
								Si mensajeEliminar == 1 Entonces
									NombreContacto1 <- NombreContacto2;
									contacto1  <- contacto2;
									organizacion1 <- organizacion2;
									
									NombreContacto2 <- NombreContacto3;
									contacto2  <- contacto3;
									organizacion2 <- organizacion3;
									Escribir "contacto Eliminando";
									buscador <- Verdadero;
									contador <- contador - 1 ;
									bandera <- 0;
								SiNo
									Escribir "No se ha eliminado";
									buscador <- Verdadero;
								FinSi
							SiNo
								Si buscarTelefono == contacto2 Entonces
									Escribir "Nombre : ",nombreContacto2;
									Escribir "Numero : ",contacto2;
									Escribir "Organizaci�n : ",organizacion2;
									
									
									Escribir "�Desea eliminarlo?";
									Escribir "1. Si";
									Escribir "2. No";
									Leer mensajeEliminar;
									Si mensajeEliminar == 1 Entonces
										NombreContacto2 <- NombreContacto3;
										contacto2  <- contacto3;
										organizacion2 <- organizacion3;
										
										NombreContacto3 <- "";
										contacto3  <- 0;
										organizacion3 <- "";;
										Escribir "contacto Eliminando";
										buscador <- Verdadero;
										contador <- contador - 1 ;
									SiNo
										Escribir "No se ha eliminado";
										buscador <- Verdadero;
									FinSi
								FinSi	
								Si buscarTelefono == contacto3 Entonces
									Escribir "Nombre : ",nombreContacto3;
									Escribir "Numero : ",contacto3;
									Escribir "Organizaci�n : ",organizacion3;
									
									
									Escribir "�Desea eliminarlo?";
									Escribir "1. Si";
									Escribir "2. No";
									Leer mensajeEliminar;
									Si mensajeEliminar == 1 Entonces
										
										NombreContacto3 <- "";
										contacto3  <- 0;
										organizacion3 <- "";
										
										Escribir "contacto Eliminando";
										buscador <- Verdadero;
										contador <- contador - 1 ;
									SiNo
										Escribir "No se ha eliminado";
										buscador <- Verdadero;
									FinSi	
								FinSi
								Si buscador == Falso Entonces
									Escribir "";
									Escribir "El usuario no se ha encontrado";
									buscador <- Verdadero;
								FinSi
							FinSi
						FinSi
					FinMientras
					
				FinSi
				
				Si opcion == 4 Entonces
					Escribir "Saliendo de la aplicaci�n";
					Escribir "";
				FinSi
				Si opcion > 4 | opcion < 1 Entonces
					Escribir "";
					Escribir "Opcion inv�lida, int�ntelo nuevamente";
					Escribir "";
				FinSi
			FinSi
		FinSi
	FinMientras
FinProceso