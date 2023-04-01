Proceso EscuelaAutomovilistica
    Definir opcion, contador,i Como Entero;
    Definir nombre, resultado Como Caracter;
    Dimension nombre[8], resultado[8];
    contador <- 0;
    opcion <- 0;
    Mientras opcion <> 4 Hacer
        Escribir "";
        Escribir "-----------------------------------";        
        Escribir "Escuela automovilistica El Maestro";
        Escribir "1. Registrar usuario";
        Escribir "2. Consultar resultados";
        Escribir "4. Salir";
        Leer opcion;
        Segun opcion Hacer
            1:
                RegistrarUsuario(contador, nombre, resultado);
            2:
                ConsultarResultados(contador, nombre, resultado);
        FinSegun
    FinMientras
FinProceso

SubProceso RegistrarUsuario(contador Por Referencia, nombre Por Referencia, resultado Por Referencia)
    Si contador < 8 Entonces
        Escribir "Ingrese el nombre del usuario:";
        Leer nombre[contador];
        Escribir "Ingrese el resultado (Aprobado/No Aprobado):";
        Leer resultado[contador];
        contador <- contador + 1;
    SiNo
        Escribir "La escuela ha alcanzado su capacidad máxima de usuarios.";
    FinSi
FinSubProceso

SubProceso ConsultarResultados(contador Por Valor, nombre Por Referencia, resultado Por Referencia)
	Definir i Como Entero;
    Para i<-0 Hasta contador-1 Con Paso 1 Hacer
        Escribir nombre[i], ":", resultado[i];
    FinPara
FinSubProceso