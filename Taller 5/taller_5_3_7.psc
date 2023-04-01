Proceso taller_5_3_7
	// Declaración de variables
	Definir i, opcion, contador Como Entero;
	Definir placa,marca,nombre,telefono Como Caracter;
	dimension placa[5], marca[5], nombre[5], telefono[5];
	
	contador <- 0;
	placa[0]<-"";
	placa[1]<-"";
	placa[2]<-"";
	placa[3]<-"";
	placa[4]<-"";
	// Menú principal
	repetir
		escribir "Menú principal:";
		escribir "1. Ingresar un vehículo al parqueadero";
		escribir "2. Retirar un vehículo del parqueadero";
		escribir "3. Consultar si un vehículo se encuentra en el parqueadero";
		escribir "4. Salir";
		escribir "Seleccione una opción: ";
		leer opcion;
		
		segun opcion hacer
			1:
				contador <- ingresar(placa, marca, nombre, telefono, contador);
				contador <- contador + 1;
			2:
				contador <- retirar(placa, marca, nombre, telefono, contador);
				contador <- contador - 1;
			3:
				consultar(placa);
			De Otro Modo:
				// No hacer nada
		finsegun
		
	hasta que opcion = 4
	
	escribir "Gracias por utilizar nuestro sistema.";
FinProceso


// Función para ingresar un vehículo al parqueadero
subproceso respuesta<-ingresar(placa Por Referencia, marca Por Referencia, nombre Por Referencia, telefono Por Referencia, contador Por Referencia)
    si contador < 5 entonces
        escribir "Ingrese la placa del vehículo: ";
        leer placa[contador];
        escribir "Ingrese la marca del vehículo: ";
        leer marca[contador];
        escribir "Ingrese el nombre completo del cliente: ";
        leer nombre[contador];
        escribir "Ingrese el número de teléfono del cliente: ";
        leer telefono[contador];
        contador <- contador + 1;
    sino
        escribir "Lo siento, el parqueadero está lleno.";
    finsi
    
finsubproceso

// Función para retirar un vehículo del parqueadero
subproceso respuesta<-retirar(placa Por Referencia, marca Por Referencia, nombre Por Referencia, telefono Por Referencia, contador Por Referencia)
	Definir  placa_retirar Como Caracter;
	Definir i Como Entero;
    escribir "Ingrese la placa del vehículo a retirar: ";
    leer placa_retirar;
    para i <- 0 hasta 4 con paso 1 hacer
        si placa[i] = placa_retirar entonces
            placa[i] <- "";
            marca[i] <- "";
            nombre[i] <- "";
            telefono[i] <- "";
            contador <- contador - 1;
            escribir "Vehículo retirado exitosamente.";
            //salirpara;
        finsi
    finpara
finsubproceso

// Función para consultar si un vehículo se encuentra en el parqueadero
subproceso consultar(placa Por Referencia)
	Definir i Como Entero;
    Definir placa_consultar Como Caracter;;
    escribir "Ingrese la placa del vehículo a consultar: ";
    leer placa_consultar;
    para i <- 0 hasta 4 con paso 1 hacer
        si placa[i] = placa_consultar entonces
            escribir "El vehículo se encuentra en el parqueadero.";
			// salirpara;
        finsi
    finpara
finsubproceso