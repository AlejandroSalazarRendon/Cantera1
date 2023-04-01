SubProceso respuesta<-descripciones()
	Definir respuesta Como Caracter;
	Escribir "------------------------------";
	
	Escribir "1. Guantes elásticos ";
	Escribir "Los guantes de látex, goma o caucho son un tipo de guante fabricado de elastómeros";
	Escribir "Tienen su principal uso en los trabajos relacionados con elementos químicos y/o que requieren limpieza. Se pueden llevar puestos al lavar platos para proteger las manos del detergente y del agua caliente";
	Escribir "";
	Escribir "2. Alcohol Antiseptico";
	Escribir "se emplea tópicamente sobre la piel como antiséptico para la desinfección de la piel, antes de las inyecciones cutáneas y en la desinfección de jeringas y termómetros clínicos";
	Escribir "";
	Escribir "3. Algodón";
	Escribir "Es frecuente su uso para paños de limpiar, aseo general, insumos medicos como gasas y vendajes.";
	Escribir "";
	Escribir "4. Vitamina C";
	Escribir "para el crecimiento y reparación de tejidos en todas las partes del cuerpo. Se utiliza para: Formar una proteína importante utilizada para producir la piel, los tendones, los ligamentos y los vasos sanguíneos";
	Escribir "";
	
FinSubProceso

SubProceso respuesta <- comprarProducto()
	Definir respuesta Como Caracter;
	Definir compraProducto Como Entero;
	
	Escribir "Comprar un producto.";
	Escribir "----------------";
	Escribir "1. Guantes elásticos  ";
	Escribir "2. Alcohol Antiseptico";
	Escribir "3. Algodón";
	Escribir "4. Vitamina C";
	Leer compraProducto;
	
	Segun compraProducto Hacer
		1:
			Escribir "Comprando producto : ";
			Escribir "Guantes elásticos";
			Escribir "";
		2:
			Escribir "Comprando producto : ";
			Escribir "Alcohol antiseptico ";
			Escribir "";
		3:
			Escribir "Comprando producto : ";
			Escribir "Algodón ";
			Escribir "";
		4:
			Escribir "Comprando producto : ";
			Escribir "Vitamina C";
			Escribir "";
		De Otro Modo:
			Escribir "Opción incorrecta";
	FinSegun
	
FinSubProceso

SubProceso  respuesta <- consultarPrecio()
	Definir respuesta Como Caracter;
	Definir consultaPrecio Como Entero;
	
	Escribir "Consultar el precio de un producto.";
	Escribir "----------------";
	Escribir "1. Guantes elásticos  ";
	Escribir "2. Alcohol Antiseptico";
	Escribir "3. Algodón";
	Escribir "4. Vitamina C";
	Escribir "";
	Leer consultaPrecio;
	Segun consultaPrecio Hacer
		1:
			Escribir "1. Guantes elásticos ";
			Escribir "15,900";
		2:
			Escribir "2. Alcohol antiseptico";
			Escribir "24,000";
		3:
			Escribir "3. Algodón";
			Escribir "2,2000";
		4:
			Escribir "4. Vitamina C";
			Escribir "37,800";
		De Otro Modo:
			Escribir "Opción incorrecta";
	FinSegun	
FinSubProceso

SubProceso respuesta <- devolucionDelProducto()
	Definir  respuesta Como Caracter;
	Definir Devolucion Como Entero;
	
	Escribir "Devolucion de un producto .";
	Escribir "---------------------------";
	Escribir "1. Guantes elásticos  ";
	Escribir "2. Alcohol Antiseptico";
	Escribir "3. Algodón";
	Escribir "4. Vitamina C";
	Leer Devolucion;
	
	Segun Devolucion Hacer
		1:
			Escribir "Devolviendo ";
			Escribir "Guantes elásticos";
		2:
			Escribir "Devolviendo ";
			Escribir "Alcohol Antiseptico";
		3:
			Escribir "Devolviendo ";
			Escribir "Algodón";
		4:
			Escribir "Devolviendo ";
			Escribir "Vitamina C";
		De Otro Modo:
			Escribir "Opcion incorrecta";
	FinSegun
FinSubProceso

SubProceso respuesta <- menu()
	Escribir "Por favor escoja una opción";
	Escribir "Opcion 1: Comprar un producto.";
	Escribir "Opcion 2: Consultar el precio de un producto.";
	Escribir "Opcion 3: Devolución de un producto.";
FinSubProceso

Proceso funciones
	Definir descripcion,compra,consulta, Devolucion,opciones Como Caracter;
	Definir opcion Como Entero;

	Escribir  "Droguería mi salud";
	Escribir  "------------------";
	descripcion<-descripciones();
	opciones <- menu();
    Leer opcion;
	
	Si opcion == 1 Entonces
		
		compra<-comprarProducto();
		
	SiNo 
		Si opcion == 2 Entonces
			
			consulta<-consultarPrecio();
			
		Sino 
			Si opcion == 3 Entonces
				
				Devolucion <- devolucionDelProducto();
				
			Sino 		
				Escribir "Opcion incorrecta";
			FinSi
		FinSi
	FinSi
FinProceso
