lista = []
n = int(input("Cuantas cadenas deseas ingresar "))

for i in range(n): 
    cadena = input("ingresa la letra o palabra ")    
    lista.append(cadena)
print("tu lista es la siguiente ", lista)

if lista == lista.reverse(): 
    print("es palindromo")
else: 
    print("no son palindromo")