listaAnidada = []
listaPlana = []
listaTemporal = []
n = int(input("Cuantas listas deseas ingresar "))

for i in range(n): 
    m = int(input("Define los elementos de la cadena"))
    for j in range(m):
        elemento = input()
        listaTemporal.append(elemento)
    listaAnidada.append(listaTemporal)
    listaTemporal = []
print("tu lista es la siguiente ", listaAnidada)

for i in range(len(listaAnidada)):
    for j in range(len(listaAnidada[i])):
        elemento = listaAnidada[i][j]
        listaPlana.append(elemento)
print("Tu lista desanidada es la siguiente", listaPlana)       
