Proceso sin_titulo
	// Declaraci�n de variables
	Definir opcion, contador,i como entero ;
	Definir nombre, telefono, organizacion, telefono_buscar como caracter; 
	Dimension nombre[3],telefono[3],organizacion[3];
	
	telefono[0]<-"";
	telefono[1]<-"";
	telefono[2]<-"";
	
	// Inicializaci�n de variables
	contador <- 0;
	
	// Men� de opciones
	repetir
		Escribir "1. A�adir contacto";
		Escribir "2. Buscar contacto";
		Escribir "3. Eliminar contacto";
		Escribir "4. Salir";
		Leer opcion;
		
		segun opcion Hacer
			
			1:
				AgregarContacto(nombre, telefono, organizacion, contador);
			2:
				BuscarContacto(nombre, telefono, organizacion);
			3:
				EliminarContacto(nombre, telefono, organizacion, contador);
				
		finsegun
		
	hasta que opcion = 4;
FinProceso

SubProceso AgregarContacto(nombre por Referencia, telefono por Referencia, organizacion por Referencia, contador por Referencia)
	si contador < 3 entonces
		Escribir "Ingrese el nombre completo del contacto:";
		Leer nombre[contador];
		Escribir "Ingrese el tel�fono del contacto:";
		Leer telefono[contador];
		Escribir "Ingrese la organizaci�n del contacto:";
		Leer organizacion[contador];
		contador <- contador + 1;
	sino
		Escribir "No se pueden almacenar m�s contactos.";
	finSi
FinSubProceso

SubProceso BuscarContacto(nombre por Referencia, telefono por Referencia, organizacion por Referencia)
    Definir telefono_buscar como caracter;
    Definir i como entero;
	Definir encontrado Como Logico;
    
	Escribir "Ingrese el tel�fono del contacto a buscar:";
    Leer telefono_buscar;
    encontrado <- falso;
    
    para i<-0 hasta 2 con paso 1 hacer
        si telefono[i] = telefono_buscar entonces
            Escribir "Nombre: ", nombre[i];
            Escribir "Tel�fono: ", telefono[i];
            Escribir "Organizaci�n: ", organizacion[i];
            encontrado <- verdadero;
        finsi
    finpara
    
    si no encontrado entonces
        Escribir "No se encontr� el contacto.";
    finSi
FinSubProceso

SubProceso EliminarContacto(nombre por Referencia, telefono por Referencia, organizacion por Referencia, contador por Referencia)
    Definir telefono_buscar como caracter;
    Definir i como entero;
	Definir encontrado Como Logico;
    
	Escribir "Ingrese el tel�fono del contacto a eliminar:";
    Leer telefono_buscar;
    encontrado <- falso;
    
    para i<-0 hasta 2 con paso 1 hacer
        si telefono[i] = telefono_buscar entonces
            nombre[i] <- "";
            telefono[i] <- "";
            organizacion[i] <- "";
            contador <- contador - 1;
            Escribir "Contacto eliminado.";
            encontrado <- verdadero;
        finsi
    finpara
    
    si no encontrado entonces
        Escribir "No se encontr� el contacto.";
    finSi
FinSubProceso