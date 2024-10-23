% ===============================================
% Autor: Jose Morales
% Fecha: 22 de octubre de 2024
% Descripción: Este código en Prolog calcula la función totiente de Euler para
% contar cuántos números menores que M son coprimos con M.
% ===============================================
% === código en python ===
% # Calcular la función totiente de Euler
% def totient(m):
%     count = 0
%     for i in range(1, m):
%         if coprime(i, m):
%             count += 1
%     return count
% === código en prolog ===
% Calcula la función totiente de Euler, que cuenta cuántos números menores que M son coprimos con M.
totient(1, 1).
totient(M, Phi) :- M > 1, totient_acc(M, M, 0, Phi).

totient_acc(_, 0, Acc, Acc).
totient_acc(M, K, Acc, Phi) :- K > 0, coprime(M, K), Acc1 is Acc + 1, K1 is K - 1, totient_acc(M, K1, Acc1, Phi).
totient_acc(M, K, Acc, Phi) :- K > 0, \+ coprime(M, K), K1 is K - 1, totient_acc(M, K1, Acc, Phi).

% Ejemplo de uso:
% ?- totient(10, Phi).
% Phi = 4.