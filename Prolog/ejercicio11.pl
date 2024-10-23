% ===============================================
% Autor: Jose Morales
% Fecha: 21 de octubre de 2024
% Descripción: Este código en Prolog aplica una codificación modificada a una lista.
% Primero codifica la lista contando las repeticiones consecutivas de los elementos, luego modifica el resultado eliminando el formato de los elementos que aparecen una sola vez.
% ===============================================
% === código en python ===
% def encode_modified(lst):
%     if not lst:
%         return []
%     
%     encoded = []
%     count = 1
%     for i in range(1, len(lst)):
%         if lst[i] == lst[i - 1]:
%             count += 1
%         else:
%             if count > 1:
%                 encoded.append((count, lst[i - 1]))
%             else:
%                 encoded.append(lst[i - 1])
%             count = 1
%     # Agregar el último grupo
%     if count > 1:
%         encoded.append((count, lst[-1]))
%     else:
%         encoded.append(lst[-1])
%
%     # Modificar el resultado
%     modified = []
%     for item in encoded:
%         if isinstance(item, tuple) and item[0] == 1:
%             modified.append(item[1])
%         else:
%             modified.append(item)
%
%     return modified
% === código en prolog ===
encode_modified(L, R) :- encode(L, Enc), modify(Enc, R).

modify([], []).
modify([[1,X]|T], [X|R]) :- modify(T, R).
modify([[N,X]|T], [[N,X]|R]) :- N > 1, modify(T, R).

% Ejemplo de uso:
% ?- encode_modified([a, a, b, c, c, c, d, d, d, d], Result).
% Result = [2, a, 1, b, 3, c, 4, d].