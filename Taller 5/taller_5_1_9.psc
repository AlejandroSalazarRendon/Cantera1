SubProceso respuesta <- rectangulo1()
	Definir respuesta Como Caracter;
	Definir altura Como Real;
	Definir base Como Real;
	Definir rectangulo Como Real;
	
	Escribir "Area de un Rectangulo";
	Escribir "*********************";
	Escribir "¿Cuál es la altura del rectangulo?";
	Leer altura;
	Escribir "¿Cuál es la base del rectangulo?";
	Leer base;
	rectangulo <- altura * base;
	Escribir "el area de este rectangulo es : ",rectangulo ," m^2";
	
FinSubProceso

SubProceso respuesta <- triangulo1()
	Definir respuesta Como Caracter;
	Definir altura Como Real;
	Definir base Como Real;
	Definir triangulo Como Real;
	
	Escribir "Area de un triangulo";
	Escribir "*********************";
	Escribir "¿Cuál es la altura del triangulo?";
	Leer altura;
	Escribir "¿Cuál es la base del triangulo?";
	Leer base;
	triangulo <- (altura * base)/2;
	Escribir "el area de este rectangulo es : ",triangulo ," m^2";
FinSubProceso

SubProceso respuesta <- trapecio1()
	Definir respuesta Como Caracter;
	Definir altura Como Real;
	Definir base Como Real;
	Definir segundaBase Como Real;
	Definir trapecio Como Real;
	
	Escribir "Area de un trapecio";
	Escribir "*********************";
	Escribir "¿Cuál es la altura del trapecio?";
	Leer altura;
	Escribir "¿Cuál es la base corta del trapecio?";
	Leer base;
	Escribir "Cuál es la base larga del trapecio";
	Leer segundaBase;
	trapecio <- ((base+segundaBase)*altura)/2;
	Escribir "el area de este rectangulo es : ",trapecio," m^2";
	
FinSubProceso



Proceso profesor
	
	Definir opcion Como Entero;
	Definir rectangulo Como Real;
	Definir triangulo Como Real;
	Definir trapecio Como Real;
	Definir altura Como Real;
	Definir base Como Real;
	Definir segundaBase Como Real;
	Definir subRectangulo,subTriangulo,subTrapecio Como Caracter;
	
	Escribir "Calcule el area de las figuras geométricas";
	Escribir "------------------------------------------";
	
	Escribir "Escoge que clase de figura quieres calcular : ";
	Escribir "opcion 1 : Rectángulo ";
	Escribir "opcion 2 : triagulo";
	Escribir "opcion 3 : trapecio";
	Leer opcion;
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			subRectangulo <- rectangulo1();
			//Seleccionar si desea calcular el area de un rectangulo A = h x b (Altura por base)
		2:
			//Seleccionar si desea calcular el area de un triangulo A = (b x h)/2 (base x altura dividido 2)
			subTriangulo <- triangulo1();
		3:
			//Seleccionar si desea calcular el area de un trapecio. A= ((B+b)xh) /2
			subTrapecio <- trapecio1();
		De Otro Modo:
			Escribir "Opción incorrecta";
	FinSegun
FinProceso