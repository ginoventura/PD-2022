vector = []
    
for i in range(20):
    animal = input("Ingrese un animal: ")
    vector.append(animal)
    animal = input("Ingrese un animal a buscar: ")

for i in range(len(vector)):
    if vector[i] == animal:
        if i == 0:
            print("Animal a la derecha: ", vector[i+1])
        elif i == len(vector)-1:
            print("Animal a la izquierda: ", vector[i-1])
        else:
            print("Animal a la derecha: ", vector[i+1])
            print("Animal a la izquierda: ", vector[i-1])
