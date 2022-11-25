
vector = [] 
i = 0
opcion = -1

while opcion != 0:
    print(" ")
    print("1. Añadir un elemento al vector.")
    print("2. Eliminar un elemento del vector.")
    print("3. Listar el contenido del vector.")
    print("4. Contar las apariciones de un número en el vector.")
    print("5. Calcular la media y el máximo de los elementos del vector.")
    print("0. Salir.")
    print(" ")
    opcion = int(input("Ingrese una opción: "))

    if opcion == 1:
        numero = int(input("Ingrese un número: "))
        vector.append(numero)

    elif opcion == 2:
        if len(vector) == 0:
            print("El vector está vacío.")
        else: 
            numero = int(input("Ingrese el número que desea eliminar: "))
            vector.remove(numero)

    elif opcion == 3:
        if len(vector) == 0:
            print("El vector está vacío.")
        else: 
            print(vector)

    elif opcion == 4:
        contador = 0
        numero = int(input("Ingrese el número para contar la cantidad de apariciones: "))
        for i in range(len(vector)):
            if vector[i] == numero:
                contador += 1
        print("La cantidad de veces que aparece el número {} es de: {}".format(numero, contador))

    elif opcion == 5:
        suma = 0
        maximo = 0

        for i in range(len(vector)):
            suma += vector[i]
            if vector[i] > maximo:
                maximo = vector[i]
        
        promedio = suma/len(vector)

        print("El promedio del vector es: ", promedio)
        print("El máximo número del vector es: ", maximo)

    elif opcion == 0:
        print("Fin del programa.")