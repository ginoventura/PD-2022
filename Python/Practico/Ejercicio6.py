contador = 0
suma = 0
cuentaA = 0
cantidad = 5

def buscaCeros(cantidad, contador, cuentaA):

    while contador != cantidad: 
        caracter = str(input("Ingrese un caracter: "))
        contador += 1

        if caracter == 'a':
            cuentaA += 1
        else:
            cuentaA += 0
    
    if cuentaA == 0:
        print("No se encontraron letras a.")
    elif cuentaA == 1:
        print("Se encontró: {} letra 'a'.".format(cuentaA))
    else:
        print("Se encontraron: {} letra 'a'.".format(cuentaA))

buscaCeros(cantidad, contador, cuentaA)