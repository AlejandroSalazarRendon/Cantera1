SubProceso respuesta<-Decorar(sabor,cantidad)
	Definir tipoDeDecoracion Como Caracter;
	Definir respuesta Como Caracter;
	
	Escribir "¿Cómo desea decorarla?";
	Leer tipoDeDecoracion;
	
	Escribir "------------ Torta ---------";
	Escribir "Torta : ";
	Escribir "Sabor a : ",sabor;
	Escribir "En ", cantidad, " porciones ","y con ",tipoDeDecoracion;
	Escribir "Se registro esta venta a las ventas diarias";
FinSubProceso

SubProceso respuesta <- DecorarDos(sabor,cantidad)
	
	Definir respuesta Como Caracter;
	Escribir "------------ Torta --------- ";
	Escribir "Sabor a : ",sabor;
	Escribir "En ", cantidad, " porciones";
	Escribir "Sin decoraciones adicionales.";
	Escribir "Se registro esta venta a las ventas diarias";
	
FinSubProceso

SubProceso  menu()
	Escribir "Presione: ";
	Escribir "1. Para fabricar otra torta";
	Escribir "2. Para salir ";
FinSubProceso

Proceso pastelero
	Definir torta,sabor,tipoDeDecoracion,funcionDecoracion,funcionDecoracionDos  Como Caracter;
	Definir cantidad, decoracion,Contador,opcion,salir Como Entero;
	
	opcion <- 0;
	Contador <- 0;
	
	Mientras opcion <> 2 Hacer
		Escribir "Pastelería Don Carlos";
		Escribir "---------------------";
		
		Escribir"Fabrica tu torta";
		Escribir "";
		Escribir "¿Qué sabor?";
		Leer sabor;
		
		Escribir "¿Cuántas porciones?";
		Leer cantidad;
		Limpiar Pantalla;
		
		Escribir "¿Desea decorar la torta?";
		
		Escribir "Digite el numero 1 para decorar la torta";
		Escribir "Digite otro numero para no decorarla";
		
		Leer decoracion;
		Limpiar Pantalla;
		
		Si decoracion == 1 Entonces
			funcionDecoracion <- Decorar(sabor,cantidad);
			Contador <- Contador+1;
			Escribir "Ventas diarias : ",Contador;
			
			menu();
			
			leer salir;
			
			Si salir = 2 Entonces
				opcion <- 2;
			SiNo
				si salir < 1 o salir > 1 Entonces
					Escribir "Opcion invalida";
				FinSi
			FinSi
		SiNo
			funcionDecoracionDos <- DecorarDos(sabor,cantidad);
			Contador <- Contador+1;
			Escribir "Ventas diarias : ",Contador;
			
			menu();
			leer salir;
			
			Si salir = 2 Entonces
				opcion <- 2;
			SiNo
				si salir < 1 o salir > 1 Entonces
					Escribir "Opcion invalida";
				FinSi
			FinSi
	FinSi
FinMientras
Escribir "Las ventas diarias fueron de : ",contador;
FinProceso