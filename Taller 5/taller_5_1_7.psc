SubProceso respuesta<-bajoPeso(rango)
	Definir respuesta Como Caracter;
	Escribir "Tu rango es de : ",rango,", estas en: ";
	Escribir "peso insuficiente o bajo peso";
FinSubProceso

SubProceso respuesta<-normal(rango)
	Definir respuesta Como Caracter;
	Escribir "Tu rango es de : ",rango,", estas en: ";
	Escribir "Peso normal.";
FinSubProceso

SubProceso respuesta<-sobrePeso(rango)
	Definir respuesta Como Caracter;
	Escribir "Tu rango es de : ",rango,", estas en: ";
	Escribir "Sobrepeso.";
FinSubProceso

SubProceso respuesta<-ObesidadI(rango)
	Definir respuesta Como Caracter;
	Escribir "Tu rango es de : ",rango,", estas en: ";
	Escribir "Obesidad grado I";
FinSubProceso

SubProceso respuesta<-ObesidadII(rango)
	Definir respuesta Como Caracter;
	Escribir "Tu rango es de : ",rango,", estas en: ";
	Escribir "Obesidad grado II";
FinSubProceso

SubProceso respuesta<-ObesidadIII(rango)
	Definir respuesta Como Caracter;
	Escribir "Tu rango es de : ",rango,", estas en: ";
	Escribir "Obesidad grado III";
FinSubProceso


Proceso IMC
	
	Definir opcion Como Entero;
	Definir peso Como Entero;
	Definir Estatura Como Real;
	Definir rango Como Real;
	Definir pesoBajo,pesoNormal,pesoSobrePeso,PesoObesidad,PesoObesidadII,pesoObesidadIII Como Caracter;
	
	
	Escribir "Secretaría de Salud Municipal";
	Escribir "-----------------------------";
	Escribir "¿Cuál es tu peso?";
	Leer Peso;
	
	Escribir "¿Cuál es tu estatura?";
	Leer Estatura;
	
	rango <- Peso/(Estatura*2);
	Si rango < 18.5 Entonces
		pesoBajo <- bajoPeso(rango);
	SiNo
		Si rango >= 18.5 & rango <= 24.9 Entonces
			pesoNormal <- normal(rango);
		SiNo
			Si rango >= 25 & rango <= 29.9 Entonces
				pesoSobrePeso<-sobrepeso(rango);
			SiNo
				Si rango >= 30 & rango <= 34.9 Entonces
					pesoObesidad<-ObesidadI(rango);
				SiNo
					Si rango >= 35 & rango <= 39.9 Entonces
						pesoObesidadII <- ObesidadII(rango);
					SiNo
						Si rango >= 40 Entonces
							pesoObesidadIII <- ObesidadIII(rango);
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso

