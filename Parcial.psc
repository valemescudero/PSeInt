
Algoritmo Parcial_19_10_2020
	//
	// cargar un vector llamado VecOriginal, con 20 numeros entre 1 y 150,
	// estos numeros se cargaran en su totalidad dentro de un Vector llamado VecOriginal
	// ese vector tendra que ser analizado por la funcion GenerarVectorDePrimos, y de ahi
	// obtendremos los datos cargados en el vector llamado VectorPrimo.
	// una vez obtenido el VectorPrimo, tendremos que mostrarlo con la cantidad justa de datos que haya grabado.
	
	//EJEMPLO DE EJECUCION
	//    *** Ejecución Iniciada. ***
	//    Vector sin Original Con los datos Numericos
	//    140  11  114  20  35  31  75  110  129  32
	//    52  119  76  76  57  92  129  36  129  89
	//    Vector Con los Numeros Primos
    //    cantidad de primos:3
	//    11  31  89
	//    *** Ejecución Finalizada. **
	
	
	dimension vecOriginal[20];
	dimension VectorPrimo[20];
	Definir vecOriginal como entero; // vector que cargara todos los nuemros aleatoreos que se generan
    Definir VectorPrimo como entero; // vector que guardara exclusivamente los numeros Primos
	definir cp como entero; // cantidad de Primos
	
	cargar(vecOriginal,20);
	escribir "Vector Original Con los datos Numericos"
	mostrarVector(vecOriginal, 20);
	cp<-GenerarVectorDePrimos(vecOriginal,VectorPrimo,20);
	escribir "Vector Con los Numeros Primos"
	escribir "cantidad de primos:",cp;
	mostrarVector(vectorPrimo, cp);
	
FinAlgoritmo

SubAlgoritmo mostrarVector(vec,n)
	definir i como entero;
	definir s como entero;
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		si s==10
			escribir "";
			s<-0;
		FinSi
		escribir vec[i+1],"  " Sin Saltar;
		s<-s+1;
	Fin Para
	escribir "";
FinSubAlgoritmo

SubAlgoritmo cargar(vector,n)
	Definir i Como Entero

	// aqui desarrolaras la carga del vector Original
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		vector[i+1]<-azar(150)+1
	Fin Para
	
FinSubAlgoritmo

subproceso z<- GenerarVectorDePrimos(vector,vectorPrimo,x)

	definir z como entero // cantidad de Primos es variable para la devolucion
	definir cp como entero // cp es cantidad de primos contados que luego se lo pasa a z para devolverlos
	cp<-0;
	
	// agrega tu codigo ///
	Definir i, j, num Como Entero
	i<-0;
	num<-0
	
	Para i<-0 Hasta x-1 Con Paso 1 Hacer
		
		num<-esprimo(vector[i+1])
			Si num == 1 Entonces
				vectorPrimo[cp+1] <- vector[i+1]
				cp <- cp + 1
			Fin Si
			
	Fin Para
	
	z<-cp; // z devolvera al programa principal la cantidad de primos encontrados
	
FinSubProceso



subproceso  n <- esprimo (t) // t en el numero pasado para averiguar si es primo o no
	definir n como entero;
	// esta rutina deeria devolver solamente si el numero pasado es primo o no( true o false --- 1 o 0)
	// este subproceso se debe llamar desde el subproceso anterior GenerarVectorDePrimos
	definir ep Como Entero // es primo (booleano)
	ep <- 1
	si t == 1
		ep <- 0 // 1 no es considerado ni primo ni compuesto
	FinSi
	
	Si t > 1 Entonces
		Para i <- 2 Hasta t-1 Con Paso 1 Hacer
			Si t%i==0 Entonces
				ep <- 0
			Fin Si
		Fin Para
	Fin Si
	
	n<-ep;
FinSubProceso


	