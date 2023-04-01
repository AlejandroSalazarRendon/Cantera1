SubProceso respuesta <- Ingresos1(cantidadActual)
	Definir cantidad Como Real;
	
	Escribir "Ingresos";
	Escribir "�Cu�nto dinero desea ingresar a la cuenta?";
	Leer cantidad;
	Si cantidad > 0 Entonces
		Escribir "Ingresando :",cantidad;
		cantidadActual <- cantidadActual + cantidad;
		Escribir "";
		Escribir "Nuevo saldo : ", cantidadActual;
	SiNo
		Escribir "No se pudo realizar la operaci�n";
	FinSi
	
FinSubProceso

SubProceso respuesta <- Retiros1(cantidadActual)
	Definir respuesta Como Caracter;
	Definir retiro Como Real;
	
	Escribir "Retiros";
	Escribir "�Cu�nto dinero desea retirar de la cuenta?";
	Leer retiro;
	
	Si cantidadActual - retiro < 0 Entonces
		Escribir "Fondos insuficientes";
	SiNo
		cantidadActual <- cantidadActual - retiro;
		Escribir "Transacci�n exitosa";
		Escribir "Nuevo saldo : ",cantidadActual;
		
	FinSi
	
	
FinSubProceso

SubProceso respuesta <- Consultas1(cantidadActual)
	
	Escribir "Consultas";
	Escribir "Consultando saldo de la cuenta ... ";
	Escribir "Su saldo es de : ",cantidadActual;
	
FinSubProceso


Proceso banco
	
	Definir opcion Como Entero;
	Definir titular Como Caracter;
	Definir cantidad Como Real;
	Definir cantidadActual Como Real;
	Definir retiro Como Real;
	Definir subIngresos, subRetiros,subConsultas Como Caracter;
	
	
	
	Escribir "Banco, Su banco fiel";
	Escribir "********************";
	
	Escribir "Nombre del titular de la cuenta?";
	Leer titular;
	
	Escribir "Bienvenido(a) sr(a). ",titular;
	
	//Ingresos, retiros o consultas
	Escribir "�Cu�l opci�n deseas realizar?";
	Escribir "Opci�n 1 : Ingresos";
	Escribir "Opci�n 2 : Retiros";
	Escribir "Opci�n 3 : Consultas";
	Leer opcion;
	
	cantidadActual <- 100000;
	
	Segun opcion Hacer
		1:
			SubIngresos <- Ingresos1(cantidadActual);
			
		2:
			subRetiros <- Retiros1 (cantidadActual);
			
		3:
			subConsultas <- Consultas1 (cantidadActual);
			
		De Otro Modo:
			Escribir "Opci�n incorrecta, intentelo nuevamente.";
	FinSegun
FinProceso