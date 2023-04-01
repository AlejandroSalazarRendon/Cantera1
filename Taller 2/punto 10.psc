Proceso banco
	
	Definir opcion Como Entero;
	Definir titular Como Caracter;
	Definir cantidad Como Real;
	Definir cantidadActual Como Real;
	Definir retiro Como Real;
	Definir SubIngresos, subRetiros,SubConsultas Como Caracter;

	
	Escribir "Banco, Su banco fiel";
	Escribir "********************";
	
	Escribir "Nombre del titular de la cuenta?";
	Leer titular;
	
	Escribir "Bienvenido(a) sr(a). ",titular;
	
	//Ingresos, retiros o consultas
	Escribir "¿Cuál opción deseas realizar?";
	Escribir "Opción 1 : Ingresos";
	Escribir "Opción 2 : Retiros";
	Escribir "Opción 3 : Consultas";
	Leer opcion;
	
	cantidadActual <- 100000;
	
	Segun opcion Hacer
		1:
			Escribir "Ingresos";
			Escribir "¿Cuánto dinero desea ingresar a la cuenta?";
			Leer cantidad;
			Si cantidad > 0 Entonces
				Escribir "Ingresando :",cantidad;
				cantidadActual <- cantidadActual + cantidad;
				Escribir "";
				Escribir "Nuevo saldo : ", cantidadActual;
			SiNo
				Escribir "No se pudo realizar la operación";
			FinSi
		
		2:
			Escribir "Retiros";
			Escribir "¿Cuánto dinero desea retirar de la cuenta?";
			Leer retiro;
			
			Si cantidadActual - retiro < 0 Entonces
				Escribir "Fondos insuficientes";
			SiNo
				cantidadActual <- cantidadActual - retiro;
				Escribir "Transacción exitosa";
				Escribir "Nuevo saldo : ",cantidadActual;
				
			FinSi
		3:
			Escribir "Consultas";
			Escribir "Consultando saldo de la cuenta ... ";
			Escribir "Su saldo es de : ",cantidadActual;
		De Otro Modo:
			Escribir "Opción incorrecta, intentelo nuevamente.";
	FinSegun
FinProceso