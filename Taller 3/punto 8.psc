Proceso Escuela
	
	Definir consultar, resultados, usuario Como Entero;
	
	Definir id1,id2,id3,id4,id5,id6,id7,id8 Como Entero;
	
	Definir nombre1,nombre2,nombre3,nombre4, nombre5,nombre6,nombre7,nombre8 Como Caracter;
	
	Definir consulta1,consulta2,consulta3,consulta4,consulta5,consulta6,consulta7,consulta8 Como Entero;
	
	Definir opcion, contador Como Entero;
	
	contador <- 0;
	
	id1<-0;
	id2<-0;
	id3<-0;
	id4<-0;
	id5<-0;
	id6<-0;
	id7<-0;
	id8<-0;
	
	
	nombre1<-"";
	nombre2<-"";
	nombre3<-"";
	nombre4<-"";
	nombre5<-"";
	nombre6<-"";
	nombre7<-"";
	nombre8<-"";
	
	
	
	Repetir
		Escribir "-----------El Maestro------------";
		Escribir "1. Registrar usuario al curso";
		Escribir "2. Consultar usuarios ";
		Escribir "3. Cerrar el sistema";
		Leer opcion;
		Limpiar Pantalla;
		
		Segun opcion Hacer
			
		1:
			
			Escribir "---------------Ingreso de vehículos----------------";
			Escribir "";
			
			Si contador = 8 Entonces
				Escribir "La escuela ya tiene (8) la máxima capacidad de usuarios";
				Escribir " ";
			SiNo
				Escribir "Ingrese el numero de ID del usuario:";
				Leer usuario;
				Si usuario = id1 o usuario = id2 o usuario = id3 o usuario = id4 o usuario = id5 o usuario = id6 o usuario = id7 o usuario = id8 Entonces
					Escribir "Usuario ya registrado.";
				SiNo
					Si id1 = 0 Entonces
						id1<-usuario;
						Escribir "Ingrese nombre completo del Usuario : ";
						leer nombre1;
						Escribir "¿El usuario aprobó el examen ?";
						Escribir "1. Si";
						Escribir "2. No";
						Escribir "";
						Leer consulta1;
						contador <- contador+1;
						Limpiar Pantalla;
						Escribir "---------- Usuario registrado ---------------";
					SiNo
						Si id2 = 0 Entonces
							
							id2 <- usuario;
							Escribir "Ingrese nombre completo del Usuario : ";
							leer nombre2;
							Escribir "¿El usuario aprobó el examen ?";
							Escribir "1. Si";
							Escribir "2. No";
							Escribir "";
							Leer consulta2;
							contador <- contador+1;
							Limpiar Pantalla;
							Escribir "---------- Usuario registrado ---------------";
							
						SiNo
							Si id3 = 0 Entonces
								
								id3 <- usuario;
								Escribir "Ingrese nombre completo del Usuario : ";
								leer nombre3;
								Escribir "¿El usuario aprobó el examen ?";
								Escribir "1. Si";
								Escribir "2. No";
								Escribir "";
								Leer consulta3;
								contador <- contador+1;
								Limpiar Pantalla;
								Escribir "---------- Usuario registrado ---------------";
								
							SiNo
								Si id4 = 0 Entonces
									id4 <- usuario;
									Escribir "Ingrese nombre completo del Usuario : ";
									leer nombre4;
									Escribir "¿El usuario aprobó el examen ?";
									Escribir "1. Si";
									Escribir "2. No";
									Escribir "";
									Leer consulta4;
									contador <- contador+1;
									Limpiar Pantalla;
									Escribir "---------- Usuario registrado ---------------";
								SiNo
									Si id5 = 0 Entonces
										id5 <- usuario;
										Escribir "Ingrese nombre completo del Usuario : ";
										leer nombre5;
										Escribir "¿El usuario aprobó el examen ?";
										Escribir "1. Si";
										Escribir "2. No";
										Escribir "";
										Leer consulta5;
										contador <- contador+1;
										Limpiar Pantalla;
										Escribir "---------- Usuario registrado ---------------";
									SiNo
										Si id6 = 0 Entonces
											id6 <- usuario;
											Escribir "Ingrese nombre completo del Usuario : ";
											leer nombre6;
											Escribir "¿El usuario aprobó el examen ?";
											Escribir "1. Si";
											Escribir "2. No";
											Escribir "";
											Leer consulta6;
											contador <- contador+1;
											Limpiar Pantalla;
											Escribir "---------- Usuario registrado ---------------";
										SiNo
											Si id7 = 0 Entonces
												id7 <- usuario;
												Escribir "Ingrese nombre completo del Usuario : ";
												leer nombre7;
												Escribir "¿El usuario aprobó el examen ?";
												Escribir "1. Si";
												Escribir "2. No";
												Escribir "";
												Leer consulta7;
												contador <- contador+1;
												Limpiar Pantalla;
												Escribir "---------- Usuario registrado ---------------";
											SiNo
												Si id8 = 0 Entonces
													id8 <- usuario;
													Escribir "Ingrese nombre completo del Usuario : ";
													leer nombre8;
													Escribir "¿El usuario aprobó el examen ?";
													Escribir "1. Si";
													Escribir "2. No";
													Escribir "";
													Leer consulta8;
													contador <- contador+1;
													Limpiar Pantalla;
													Escribir "---------- Usuario registrado ---------------";	
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			
		2:
			Escribir "---------- Consultar usuario--------------";
			Escribir "Ingrese el ID del usuario";
			Leer consultar;
			
			si consultar <> id1 y consultar <> id2 y consultar <> id3 y consultar <> id4 y consultar <> id5 y consultar <> id6 y consultar <> id7 y consultar <> id8 Entonces
				
				Escribir "El usuario no se encuentra registrado";
				
			SiNo
				Si consultar = id1 Entonces
					Escribir "Nombre: ",nombre1;
					Escribir "Resultado de la prueba : ";
					Si consulta1 = 1 Entonces
						Escribir " Aprobado ";
					SiNo
						Si consulta1 = 2 Entonces
							Escribir "No aprobado";
						FinSi
					FinSi
				SiNo
					Si consultar = id2 Entonces
						Escribir "Nombre: ",nombre2;
						Escribir "Resultado de la prueba : ";
						Si consulta2 = 1 Entonces
							Escribir " Aprobado ";
						SiNo
							Si consulta2 = 2 Entonces
								Escribir "No aprobado";
							FinSi
						FinSi
					SiNo 
						Si consultar = id3 Entonces
							Escribir "Nombre: ",nombre3;
							Escribir "Resultado de la prueba : ";
							Si consulta3 = 1 Entonces
								Escribir " Aprobado ";
							SiNo
								Si consulta3 = 2 Entonces
									Escribir "No aprobado";
								FinSi
							FinSi
						SiNo
							Si consultar = id4 Entonces
								Escribir "Nombre: ",nombre4;
								Escribir "Resultado de la prueba : ";
								Si consulta4 = 1 Entonces
									Escribir " Aprobado ";
								SiNo
									Si consulta4 = 2 Entonces
										Escribir "No aprobado";
									FinSi
								FinSi
							SiNo
								Si consultar = id5 Entonces
									
									Escribir "Nombre: ",nombre5;
									Escribir "Resultado de la prueba : ";
									Si consulta5 = 1 Entonces
										Escribir " Aprobado ";
									SiNo
										Si consulta5 = 2 Entonces
											Escribir "No aprobado";
										FinSi
									FinSi
								SiNo
									Si consultar = id6 Entonces
										
										Escribir "Nombre: ",nombre6;
										Escribir "Resultado de la prueba : ";
										Si consulta6 = 1 Entonces
											Escribir " Aprobado ";
										SiNo
											Si consulta6 = 2 Entonces
												Escribir "No aprobado";
											FinSi
										FinSi
									SiNo
										Si consultar = id7 Entonces
											Escribir "Nombre: ",nombre7;
											Escribir "Resultado de la prueba : ";
											Si consulta7 = 1 Entonces
												Escribir " Aprobado ";
											SiNo
												Si consulta7 = 2 Entonces
													Escribir "No aprobado";
												FinSi
											FinSi
										SiNo
											Si consultar = id8 Entonces
												Escribir "Nombre: ",nombre8;
												Escribir "Resultado de la prueba : ";
												Si consulta8 = 1 Entonces
													Escribir " Aprobado ";
												SiNo
													Si consulta8 = 2 Entonces
														Escribir "No aprobado";
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSegun	
	Hasta Que opcion = 3
FinProceso