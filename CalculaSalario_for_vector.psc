Funcion min <- funMin ( cantidad, salario )
	definir min Como Real
	definir i como entero
	min=salario[1]
	Para i=2 Hasta cantidad Con Paso 1 Hacer
		Si salario[i]<min Entonces
			min=salario[i]
		Fin Si
	Fin Para
	
Fin Funcion

Funcion max <- funMax (cantidad, salario)
	definir max Como Real
	Definir i Como Entero
	max=salario[1]
	Para i=2 Hasta cantidad Con Paso 1 Hacer
		Si salario[i]>max Entonces
			max=salario[i]
		Fin Si
		
	Fin Para
	
Fin Funcion

Funcion promedio <- funpromedio (cantidad, salario)
	definir promedio, sumatoria Como Real
	definir i Como Entero
	Para i=1 Hasta cantidad Con Paso 1 Hacer
		sumatoria=sumatoria+salario[i]
	Fin Para
	promedio=sumatoria/cantidad
Fin Funcion

Funcion totalnomina<- funsumatoria ( cantidad, salario)
	definir totalnomina Como Real
	totalnomina=0
	Para i=1 Hasta cantidad Con Paso 1 Hacer
		totalnomina=totalnomina+salario[i]
	Fin Para
Fin Funcion

Algoritmo CalculaSalario
	//Variables de salida:
	Definir  descuentoISSS,totalPagar,descuentoafp,descuentoRenta, total Como Real
	//Variable de entrada:
	definir cantidad Como Entero
	//variables de proceso:
	Definir AFP, ISSS, RENTA,salarioDescuento Como Real
	AFP=0.0725
	ISSS=0.03
	RENTA=0.10
	Escribir "Digite cantidad de empleados a procesar"
	leer cantidad
	Dimension salario[cantidad]
	Para i=1 Hasta cantidad Con Paso 1 Hacer
		Repetir
			Escribir "Digite su salario"
			Leer salario[i]
		Hasta Que salario[i]>0
		descuentoAFP=salario[i]*AFP
		descuentoISSS=salario[i]*ISSS
		salarioDescuento=salario[i]-(descuentoAFP+descuentoISSS)
		descuentoRenta=salarioDescuento*RENTA
		totalPagar=salarioDescuento-descuentoRenta
		Escribir "El descuento de AFP es:$", descuentoAFP
		Imprimir "El descuento de ISSS es:$",descuentoISSS
		Escribir "El descuento de RENTA es:$", descuentoRenta
		Escribir "El total a pagar es :$", totalPagar
	Fin Para
	Escribir "la Sumatoria de salario bruto es:" , funsumatoria(cantidad,salario)
	Escribir "El total salario bruto promedio es:", funpromedio(cantidad,salario)
	Escribir " El salario bruto maximo es:", funMax(cantidad, salario)
	Escribir " El salario menor es:", funMin(cantidad, salario)
FinAlgoritmo
