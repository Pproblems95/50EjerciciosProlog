lista = []
n = int(input("Cuantas cadenas deseas ingresar "))

for i in range(n): 
    cadena = input("ingresa la letra o palabra ")    
    lista.append(cadena)
print("tu lista es la siguiente ", lista)

for i in range(len(lista)-1,0,-1):
    if (lista[i] == lista[i-1]):
        lista.pop(i)
print("sin repetidos es: ", lista)