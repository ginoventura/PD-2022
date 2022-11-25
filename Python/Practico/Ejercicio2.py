correctas = int(input("Ingrese la cantidad de respuestas correctas: ")) 
incorrectas = int(input("Ingrese la cantidad de respuestas incorrectas: ")) 
blanco = int(input("Ingrese la cantidad de respuestas en blanco: ")) 

def puntaje(correctas, incorrectas, blanco): 
    puntos = ((correctas*5) + (incorrectas*(-1)))
    print("El puntaje del examen con: \n{} respuestas correctas, \n{} respuestas incorrectas y \n{} respuestas en blanco es de: \n{} puntos.".format(correctas, incorrectas, blanco, puntos))

puntaje(correctas, incorrectas, blanco)