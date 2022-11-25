contador = 0
suma = 0
cuentaCeros = 0

cantidad = int(input("Ingrese la cantidad de números: ")) 

def buscaCeros(cantidad, contador, cuentaCeros):

    while contador != cantidad: 
        numero = int(input("Ingrese un número: "))
        contador += 1

        if numero == 0:
            cuentaCeros += 1
        else:
            cuentaCeros += 0
    
    if cuentaCeros == 0:
        print("No se encontraron números 0.")
    else:
        print("Se encontraron: {} números 0.".format(cuentaCeros))

buscaCeros(cantidad, contador, cuentaCeros)