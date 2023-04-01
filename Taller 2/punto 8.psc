Proceso pastelero
	
	Definir torta Como Caracter;
	Definir sabor Como Caracter;
	Definir cantidad Como Entero;
	Definir decoracion Como Entero;
	Definir tipoDeDecoracion Como Caracter;
	Definir Contador Como Entero;
	Contador <- 0;
	
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
		Escribir "¿Cómo desea decorarla?";
		Leer tipoDeDecoracion;
		
		Escribir "Torta : ";
		Escribir "Sabor a : ",sabor;
		Escribir "En ", cantidad, " porciones ","y con ",tipoDeDecoracion;
		Contador <- Contador+1;
		Escribir "Se registro esta venta a las ventas diarias";
		Escribir "Ventas diarias : ",Contador;
	SiNo
		Escribir "Torta : ";
		Escribir "Sabor a : ",sabor;
		Escribir "En ", cantidad, " porciones";
		Contador <- Contador+1;
		Escribir "Se registro esta venta a las ventas diarias";
		Escribir "Ventas diarias : ",Contador;
	FinSi
FinProceso