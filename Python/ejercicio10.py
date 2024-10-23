lista = []
n = int(input("¿Cuántos elementos deseas ingresar? "))

for i in range(n): 
    elemento = input("Ingresa un elemento: ")    
    lista.append(elemento)

print("Lista original:", lista)

lista_anidada = []
elementos_usados = set()  

for elemento in lista:
    if elemento not in elementos_usados:
        cantidad = lista.count(elemento)  
        lista_anidada.append([cantidad, elemento])  
        elementos_usados.add(elemento)  
print("Lista anidada con la notación [x, i]:", lista_anidada)