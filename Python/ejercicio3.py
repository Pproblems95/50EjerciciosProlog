lista = []
n = int(input("Cuantas cadenas deseas ingresar "))

for i in range(n): 
    cadena = input("ingresa la letra o palabra ")    
    lista.append(cadena)

print("tu lista es la siguiente ", lista)

buscar = int(input("Que elemento deseas buscar de la lista"))

if 0 <= buscar < len(lista):
    elemento = lista[buscar]
    print("El elemento es ", elemento)
else:
    print("Elemento invalido")