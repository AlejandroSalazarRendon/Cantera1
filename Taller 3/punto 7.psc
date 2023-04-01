Proceso parqueadero
	
	Definir placa,placa1,placa2,placa3,placa4,placa5 Como Caracter;
	Definir marca1,marca2,marca3,marca4,marca5 Como Caracter;
	Definir nombre1,nombre2,nombre3,nombre4,nombre5 Como Caracter;
	Definir telefono1,telefono2,telefono3,telefono4,telefono5 Como Entero;
	Definir opcion, contador,retirar Como Entero;
	contador <- 0;
	opcion <- 0;
	retirar <- 0;
	
	placa1<- "";
	placa2<- "";
	placa3<- "";
	placa4<- "";
	placa5<- "";
	
	marca1<-"";
	marca2<-"";
	marca3<-"";
	marca4<-"";
	marca5<-"";
	
	nombre1<-"";
	nombre2<-"";
	nombre3<-"";
	nombre4<-"";
	nombre5<-"";
	
	telefono1<-0;
	telefono2<-0;
	telefono3<-0;
	telefono4<-0;
	telefono5<-0;
	
	//Hacer la funcion en los agregar y por fin terminamos
	
	Repetir
		Escribir "-----------El guardian------------";
		Escribir "1- Ingresar vehículo";
		Escribir "2- Buscar Vehículo";
		Escribir "3-Salida del vehículo";
		Escribir "4- Cerrar el sistema";
		Leer opcion;
		Limpiar Pantalla;
		Segun opcion Hacer
			1:
				Escribir "---------------Ingreso de vehículos----------------";
				Escribir "";
				
				Si contador=5 Entonces
					Escribir "Parqueadero lleno, maximo de vehículos (5)";
					Escribir "Retire vehículos del parqueadero antes de continuar";
				SiNo
					Escribir "Ingrese Placa:";
					Leer placa;
					si placa = placa1 o placa = placa2 o placa = placa3 o placa = placa4 o placa = placa5 Entonces
						Escribir "Este vehículo ya esta guardado";
					SiNo
						Si placa1 = "" Entonces
							placa1<-placa;
							Escribir "Ingrese la marca del vehículo";
							leer marca1;
							Escribir "Ingrese nombre completo del propietario";
							leer nombre1;
							Escribir "Numero de telefono";
							Leer telefono1;
							Escribir "";
							contador <- contador+1;
							Limpiar Pantalla;
							Escribir "----------Vehículo guardado---------------";
						SiNo
							Si placa2 ="" Entonces
								
								placa2 <- placa;
								Escribir "Ingrese la marca del vehículo";
								leer marca2;
								Escribir "Ingrese nombre completo del propietario";
								leer nombre2;
								Escribir "Numero de telefono";
								Leer telefono2;
								Escribir "";
								contador <- contador+1;
								Limpiar Pantalla;
								Escribir "----------Vehículo guardado---------------";
							SiNo
								Si placa3 = "" Entonces
									placa3 <- placa;
									Escribir "Ingrese la marca del vehículo";
									leer marca3;
									Escribir "Ingrese nombre completo del propietario";
									leer nombre3;
									Escribir "Numero de telefono";
									Leer telefono3;
									Escribir "";
									contador <- contador+1;
									Limpiar Pantalla;
									Escribir "----------Vehículo guardado---------------";
									
								SiNo
									Si placa4 = "" Entonces
										placa4 <- placa;
										Escribir "Ingrese la marca del vehículo";
										leer marca4;
										Escribir "Ingrese nombre completo del propietario";
										leer nombre4;
										Escribir "Numero de telefono";
										Leer telefono4;
										Escribir "";
										contador <- contador+1;
										Limpiar Pantalla;
										Escribir "----------Vehículo guardado---------------";
									SiNo
										Si placa5 ="" Entonces
											placa5 <- placa;
											Escribir "Ingrese la marca del vehículo";
											leer marca5;
											Escribir "Ingrese nombre completo del propietario";
											leer nombre5;
											Escribir "Numero de telefono";
											Leer telefono5;
											Escribir "";
											contador <- contador+1;
											Limpiar Pantalla;
											Escribir "----------Vehículo guardado---------------";
											
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				
			2:		
				Escribir "----------Buscar un vehiculo--------------";
				Escribir "Ingrese la placa del vehiculo";
				Leer placa;
				
				si placa <> placa1 y placa <> placa2 y placa <> placa3 y placa <> placa4 y placa <> placa5 Entonces
					
					Escribir "Este vehiculo no se guarda en el parqueadero";
					
				SiNo
					Si placa = placa1 Entonces
						Escribir "Nombre: ",nombre1;
						Escribir "Telefono: ",telefono1;
						Escribir "Placa: ",placa1;
						Escribir "Marca: ",marca1;
					SiNo
						Si placa =placa2 Entonces
							Escribir "Nombre: ",nombre2;
							Escribir "Telefono: ",telefono2;
							Escribir "Placa: ",placa2;
							Escribir "Marca: ",marca2;
						SiNo 
							Si placa = placa3 Entonces
								Escribir "Nombre: ",nombre3;
								Escribir "Telefono: ",telefono3;
								Escribir "Placa: ",placa3;
								Escribir "Marca: ",marca3;
							SiNo
								Si placa = placa4 Entonces
									Escribir "Nombre: ",nombre4;
									Escribir "Telefono: ",telefono4;
									Escribir "Placa: ",placa4;
									Escribir "Marca: ",marca4;
								SiNo
									Si placa = placa5 Entonces
										
										Escribir "Nombre: ",nombre5;
										Escribir "Telefono: ",telefono5;
										Escribir "Placa: ",placa5;
										Escribir "Marca: ",marca5;
									FinSi
									
								FinSi
							FinSi
						FinSi
						
					FinSi
				FinSi
			3:
				Escribir "----------Salida de vehículos ---------";
				Escribir "Vehiculos guardados : ",contador;
				Escribir "1.placa ",placa1, " marca ",marca1," Nombre ",nombre1," telefono ",telefono1," ";
				Escribir "2.placa ",placa2, " marca ",marca2," Nombre ",nombre2," telefono ",telefono2," ";
				Escribir "3.placa ",placa3, " marca ",marca3," Nombre ",nombre3," telefono ",telefono3," ";
				Escribir "4.placa ",placa4, " marca ",marca4," Nombre ",nombre4," telefono ",telefono4," ";
				Escribir "5.placa ",placa5, " marca ",marca5," Nombre ",nombre5," telefono ",telefono5," ";
				Escribir "¿Que vehiculo desea retirar? ";
				Escribir "placa : ";
				leer retirar;
				Limpiar Pantalla;
				
				Si contador = 0 Entonces
					Escribir "No hay vehículos en el parqueadero";
				SiNo
					
					Segun retirar Hacer
						
						1:
							Escribir "Nombre: ",nombre1;
							Escribir "Telefono: ",telefono1;
							Escribir "Placa: ",placa1;
							Escribir "Marca: ",marca1;
							Escribir "Vehiculo retirado del parqueadero  ";
							
							nombre1 <- nombre2;
							telefono1 <-telefono2;
							placa1 <- placa2;
							marca1 <- marca2;
							
							
							nombre2 <- nombre3;
							telefono2 <-telefono3;
							placa2 <- placa3;
							marca2 <- marca3;
							
							
							nombre3 <- nombre4;
							telefono3 <-telefono4;
							placa3 <- placa4;
							marca3 <- marca4;
							
							
							nombre4 <- nombre5;
							telefono4 <-telefono5;
							placa4 <- placa5;
							marca4 <- marca5;
							
							nombre5 <- "";
							telefono5 <-0;
							placa5 <- "";
							marca5 <- "";
							
							contador <- contador-1;
							
						2:
							Escribir "Nombre: ",nombre2;
							Escribir "Telefono: ",telefono2;
							Escribir "Placa: ",placa2;
							Escribir "Marca: ",marca2;
							Escribir "Vehiculo retirado del parqueadero ";
							
							nombre2 <- nombre3;
							telefono2 <-telefono3;
							placa2 <- placa3;
							marca2 <- marca3;
							
							
							nombre3 <- nombre4;
							telefono3 <-telefono4;
							placa3 <- placa4;
							marca3 <- marca4;
							
							
							nombre4 <- nombre5;
							telefono4 <-telefono5;
							placa4 <- placa5;
							marca4 <- marca5;
							
							nombre5 <- "";
							telefono5 <-0;
							placa5 <- "";
							marca5 <- "";
							
							contador <- contador-1;
						3:
							Escribir "Nombre: ",nombre3;
							Escribir "Telefono: ",telefono3;
							Escribir "Placa: ",placa3;
							Escribir "Marca: ",marca3;
							Escribir "Vehiculo retirado del parqueadero  ";
							
							nombre3 <- nombre4;
							telefono3 <-telefono4;
							placa3 <- placa4;
							marca3 <- marca4;
							
							
							nombre4 <- nombre5;
							telefono4 <-telefono5;
							placa4 <- placa5;
							marca4 <- marca5;
							
							nombre5 <- "";
							telefono5 <-0;
							placa5 <- "";
							marca5 <- "";
							
							contador <- contador-1;
						4:
							Escribir "Nombre: ",nombre4;
							Escribir "Telefono: ",telefono4;
							Escribir "Placa: ",placa4;
							Escribir "Marca: ",marca4;
							Escribir "Vehiculo retirado del parqueadero  ";
							
							nombre4 <- nombre5;
							telefono4 <-telefono5;
							placa4 <- placa5;
							marca4 <- marca5;
							
							
							nombre5 <- "";
							telefono5 <-0;
							placa5 <- "";
							marca5 <- "";
							
							contador <- contador-1;
							
						5:	
							Escribir "Nombre: ",nombre5;
							Escribir "Telefono: ",telefono5;
							Escribir "Placa: ",placa5;
							Escribir "Marca: ",marca5;
							Escribir "Vehiculo retirado del parqueadero  ";
							
							nombre5 <- "";
							telefono5 <-0;
							placa5 <- "";
							marca5 <- "";
							
							contador <- contador-1;
							
						De Otro Modo:
							Escribir "Vehiculo no se encuentra en el parqueadero  ";
					FinSegun
						
					
				FinSi
				
		FinSegun
	Hasta Que opcion=4
	
FinProceso