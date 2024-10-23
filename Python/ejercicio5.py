lista = []
n = int(input("Cuantas cadenas deseas ingresar "))

for i in range(n): 
    cadena = input("ingresa la letra o palabra ")    
    lista.append(cadena)

print("tu lista es la siguiente ", lista)
print("Tu lista al reves es: ", lista.reverse())