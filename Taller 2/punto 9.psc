Proceso profesor
	
	Definir opcion Como Entero;
	Definir rectangulo Como Real;
	Definir triangulo Como Real;
	Definir trapecio Como Real;
	Definir altura Como Real;
	Definir base Como Real;
	Definir segundaBase Como Real;
	
	Escribir "Calcule el area de las figuras geom�tricas";
	Escribir "------------------------------------------";
	
	Escribir "Escoge que clase de figura quieres calcular : ";
	Escribir "opcion 1 : Rect�ngulo ";
	Escribir "opcion 2 : triagulo";
	Escribir "opcion 3 : trapecio";
	Leer opcion;
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			//Seleccionar si desea calcular el area de un rectangulo A = h x b (Altura por base)
			Escribir "Area de un Rectangulo";
			Escribir "*********************";
			Escribir "�Cu�l es la altura del rectangulo?";
			Leer altura;
			Escribir "�Cu�l es la base del rectangulo?";
			Leer base;
			rectangulo <- altura * base;
			Escribir "el area de este rectangulo es : ",rectangulo ," m^2";
		2:
			//Seleccionar si desea calcular el area de un triangulo A = (b x h)/2 (base x altura dividido 2)
			Escribir "Area de un triangulo";
			Escribir "�Cu�l es la altura del triangulo?";
			Leer altura;
			Escribir "�Cu�l es la base del triangulo?";
			Leer base;
			triangulo <- (altura * base)/2;
			Escribir "el area de este triangulo es : ",triangulo ," m^2";
		3:
			//Seleccionar si desea calcular el area de un trapecio. A= ((B+b)xh) /2
			Escribir "Area de un trapecio";
			Escribir "�Cu�l es la altura del trapecio?";
			Leer altura;
			Escribir "�Cu�l es la base corta del trapecio?";
			Leer base;
			Escribir "Cu�l es la base larga del trapecio";
			Leer segundaBase;
			trapecio <- ((base+segundaBase)*altura)/2;
			Escribir "el area de este trapecio es : ",trapecio," m^2";
		De Otro Modo:
			Escribir "Opci�n incorrecta";
	FinSegun
	
FinProceso
