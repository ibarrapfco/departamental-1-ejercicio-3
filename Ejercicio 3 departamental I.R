##EJERCICIO 3

#Manzana. 350 gramos a $400 
#Peras- 450 gramos a $450
#Garbanzos- 600 gramos a $450
#Lentejas- 600 gramos a $500
#Paltas- 1 kilogramos $1.500

#descuento de 10% a 40% aleatorio EFECTIVO
#descuento de 1% a 10% aleatorio CREDITO
#otra forma de pago 3% fijo

#Productos por kilos que se quieran comprar:

manzana <- sample(0:2,1,replace=T)
manzana
peras <- sample(0:2,1,replace=T)
peras
garbanzos <- sample(0:2,1,replace=T)
garbanzos
lentejas <- sample(0:2,1,replace=T)
lentejas
paltas <- sample(0:2,1,replace=T)
paltas

#$ de productos por kilos:

preciomanzana <- (manzana/0.35)*400
print(preciomanzana)
precioperas <- (peras/0.45)*450
print(precioperas)
preciogarbanzos <- (garbanzos/0.6)*450
print(preciogarbanzos)
preciolentejas <- (lentejas/0.6)*500
print(preciolentejas)
preciopaltas <- paltas*1500
print(preciopaltas)

total <- preciomanzana+precioperas+preciogarbanzos+preciolentejas+preciopaltas
print(total)

lista <- list("manzana","peras","garbanzos","lentejas","paltas")
lista

#Para otro medio de pago, se le aplica un 3% de descuento
otroMedioPago <- 0.03

metododepago <- sample(1:3,1,replace=T)
metododepago

if(lista=="manzana" || lista=="peras" || lista=="garbanzos" || lista=="lentejas" || lista=="paltas"){
  if(metododepago == 1){
    #acciones cuando se paga en efectivo
    print("Metodo de pago: efectivo")
    efectivo <- print(sample(10:40,1,replace=TRUE)*0.01)
    efectivo <- total-(total*efectivo)
    print(paste("Pago con descuento aplicado $",efectivo,sep=" "))
  } else if(metododepago == 2){
    #acciones cuando se paga en credito
    print("Metodo de pago: credito")
    credito <- print(sample(1:10,1,replace=TRUE)*0.01)
    credito <- total+(total*credito)
    print(paste("Pago con descuento aplicado $",credito,sep=" "))
  } else if(metododepago==3){
    #acciones cuando se paga con otro medio
    print("Metodo de pago: otro")
    otroMedioPago <- total-(total*0.03)
    print(paste("Pago con descuento aplicado $",otroMedioPago,sep=" "))
  } 
}else{
  print("No existe información de este producto")
}

