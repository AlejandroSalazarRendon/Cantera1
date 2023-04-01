Proceso arreglos
	Definir indice,num Como Entero;
	Dimension num[20];

    llenarNumeros(num);
    Escribir "Números pares:";
    mostrarParesImpares(num, 0);
    Escribir "";
    Escribir "Números impares:";
    mostrarParesImpares(num, 1);
	Escribir "";
FinProceso

SubProceso llenarNumeros(num Por Referencia)
	Definir indice Como Entero;
	Para indice<-0 Hasta 19 Con Paso 1 Hacer
        num[indice] <- Aleatorio(1, 100);
    FinPara
FinSubProceso

SubProceso mostrarParesImpares(num , paridad)
	Definir indice Como Entero;
	Para indice<-0 Hasta 19 Con Paso 1 Hacer
        Si num[indice] MOD 2 = paridad Entonces
            Escribir num[indice]," "; Sin Saltar;
        FinSi
    FinPara
FinSubProceso 