## encuentra el ultimo elemento de una lista 

lista = []
n = int(input("Cuantas cadenas deseas ingresar "))

for i in range(n): 
    cadena = input("ingresa la letra o palabra ")    
    lista.append(cadena)

print("tu lista es la siguiente ", lista)
print("y el ultimo elemento es ", lista[-1])

