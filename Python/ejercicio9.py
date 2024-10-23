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
        grupo = [x for x in lista if x == elemento]  
        lista_anidada.append(grupo)  
        elementos_usados.add(elemento)  

print("Lista anidada con elementos repetidos agrupados:", lista_anidada)