Algoritmo PreParcial05102020Version1
	
    //
	//  2)En un negocio tenemos las ventas realizadas de distintos meses, 
	//  sea enero, febrero y marzo.
	//  Por otro lado tenemos ventas a ingresar con valores entre 200 y 1000 pesos.
	// (que sera aleatorio).
	//  Al usuario para poder cargar esta informacion, se le pide que ingrese
	//	el numero de mes que puede ser...
	//	1. Enero
	//	2. Febrero
	//	3.Marzo
	//	para finalizar la carga tendra que ingresar un mes igual a -1.
	//	Luego tendra que ingresar el valor de la Compra
	//	 de esa manera quedarian registradas las ventas.
	//	 
	//	 SE PIDE
	//	 1) Genera la carga para esa informacion.
	//		
	//	 2) Mostrar con UNA subrutina todos Los meses cargados por pantalla.
	//	   de acuerdo a el prototipo de subrutina que les deje para completar
	
	//	 3) determinar cual fue el mejor MES de ventas.
	

    Dimension enero[100], febrero[100],marzo[100]; 
	
    definir enero,febrero,marzo Como Entero; 
	definir ce,cf,cm Como Entero;
	definir mes como entero;
	ce=0;cf=0;cm=0;
	escribir"Ingrese Numero de Mes:";
	leer mes;
	Mientras mes<>-1 Hacer
		Segun mes Hacer
			1:
				enero[ce]=azar(1000-200+1)+200;
			    ce=ce+1;
			2:
				febrero[cf]=azar(1000-200+1)+200;
				cf=cf+1;
			3:
				marzo[cm]=azar(1000-200+1)+200;
				cm=cm+1;
			De Otro Modo:
				Escribir ("ingreso un mes fuera de rango");
		Fin Segun
		escribir"Ingrese Numero de Mes:";
		leer mes;
	Fin Mientras
   
	
    escribir" Vectores cargados" 
	Escribir "Ventas Por Enero";
    MostrarVector(enero,ce); 
	Escribir "Ventas Por Febrero";
	MostrarVector(febrero,cf); 
	Escribir "Ventas Por Marzo";
	MostrarVector(marzo,cm); 
	MejorMesdeVentas(enero,febrero,marzo,ce,cf,cm);
FinAlgoritmo 

SubAlgoritmo MostrarVector(vector,limite) 
	
    definir i Como Entero 
    Para i<-0 Hasta limite-1 Con Paso 1 Hacer 
        escribir vector[i]; 
    fin para 	
	escribir"------------------------------------------";
FinSubAlgoritmo 

SubAlgoritmo MejorMesdeVentas(enero,febrero,marzo,ce,cf,cm)
	definir i Como Entero;
	definir j Como Entero;
	definir VentasTotales como Entero;
	definir max Como Entero;
	definir pos Como Entero;
	Dimension VentasTotales[3];
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		VentasTotales[j]=0;
	Fin Para
	
	Para j<-0 Hasta 2 Con Paso 1 Hacer
		SI(j=0)
			Para i<-0 Hasta ce Con Paso 1 Hacer
				VentasTotales[j]= VentasTotales[j] + enero[i];
			Fin Para
		FIN SI
		SI(j=1)
			Para i<-0 Hasta cf Con Paso 1 Hacer
				VentasTotales[j]= VentasTotales[j] + febrero[i];
			Fin Para
		FIN SI
		SI(j=2)
			Para i<-0 Hasta cm Con Paso 1 Hacer
				VentasTotales[j]= VentasTotales[j] + marzo[i];
			Fin Para
		FIN SI
	Fin Para
	Escribir "Vental totales por Mes"
	MostrarVector(VentasTotales,3); 
	max=VentasTotales[0];
	pos=0;
	Para i<-1 Hasta 2 Con Paso 1 Hacer
		Si VentasTotales[i]>max Entonces
			max=VentasTotales[i];
			pos=i;
		Fin Si
	Fin Para
	Segun pos Hacer
		1:
			Escribir " el mes de Enero Vendio mas con:",max;
		2:
			Escribir " el mes de Febrero Vendio mas con:",max;
		3:
			Escribir " el mes de Marzo Vendio mas con:",max;
		
	Fin Segun

	
FinSubAlgoritmo






