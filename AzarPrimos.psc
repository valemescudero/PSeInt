Proceso primosAzar
	Definir num, vector, coincidencia, i, j, divisores, mayorNum Como Entero
	j <-1
	
	Dimension vector[5]
	
	Mientras coincidencia < 5  Hacer
		num<-azar(10) +1
		
		Si num > 1 Entonces
		
		divisores <- 0
		
		Para i <- 2 Hasta num-1 Con Paso 1 Hacer
			Si num%i=0 Entonces
				divisores <- divisores+1
			Fin Si
		Fin Para
		
		Si divisores = 0 Entonces
			vector[j] <- num
			coincidencia <- coincidencia + 1
			j <- j+1
			Si num > mayorNum Entonces
				mayorNum <- num
			Fin Si
		Fin Si
		
		Fin Si
	Fin Mientras
	
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir vector[i]
	Fin Para
	Escribir "El primo mayor es", mayorNum
FinProceso
	