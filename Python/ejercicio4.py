lista = []
n = int(input("Cuantas cadenas deseas ingresar "))

for i in range(n): 
    cadena = input("ingresa la letra o palabra ")    
    lista.append(cadena)

print("tu lista es la siguiente ", lista)
print("la longitud de la lista es ", len(lista))