# Prolog
Prolog (Logical programming)

1.- La serie de Fibonacci se define recursivamente como:

F( 0 ) = 0
F( 1 ) = 1
F( n ) = F(n-1) + F(n-2) si n > 1

La función no está definida para valores negativos de n.

Implemente un predicado fibo (Fibonacci) que tenga dos parámetros enteros, el primero representa el índice de la serie y el segundo el valor de la serie para ese índice. Debe permitirse dejar sin especificar (para obtener) el segundo parámetro.

Ejemplo:

> fibo(7,V)
V = 13

2.- Escriba un predicado llamado expo para obtener el exponencial (bn) utilizando la definición recursiva que aparece a continuación. El predicado expo tendrá tres parámetros enteros, el primero representa la base, el segundo el exponente y el tercero el valor de la operación. Debe permitirse dejar sin especificar (para obtener) el tercer parámetro. 
Definición recursiva de expo:
b0 = 1
bn = b * bn-1 si n ≥ 1

La operación no está definida para valores negativos de n.

Ejemplo:

> expo(2, 3, V)
V = 8

3.- Escriba un predicado denominado minimo con dos parámetros, el primero es una lista de enteros sin valores repetidos, el predicado será verdadero cuando el segundo parámetro sea el menor en la lista. Debe permitirse dejar sin especificar (para obtener) el segundo parámetro.

Ejemplo:

> minimo([ 7, 6, 3, 2, 9, 1], M)
M = 1

4.- Escriba un predicado denominado inserta, la cual tiene 3 parámetros, el primero será una lista ordenada, el segundo un entero, y el tercero una lista ordenada sin valores repetidos igual que la primera pero que contiene el segundo parámetro. Debe permitirse dejar sin especificar (para obtenerlo) cualquiera de los tres parámetros.

Ejemplo:

> inserta([5, 6, 30, 60, 90], 40, L)
L = [5, 6, 30, 40, 60, 90]

> inserta([5, 6, 30, 60, 90], 30, L)
L = [5, 6, 30, 60, 90]

5.- Defina un predicado invierte con dos parámetros, una lista y una segunda con sus elementos en orden inverso. NO se puede utilizar el predicado reverse. Debe permitirse dejar sin especificar (para obtener) el segundo parámetro.

Ejemplo:

> invierte( [a, [b, c], d, [e, f]], L)

L = [[e, f], d, [b, c], a]

6.- Defina un predicado elimina con tres parámetros donde el primero es una lista, el segundo un elemento (átomo o lista) y el último una lista que debe cumplir que es igual que la primera pero en la que se han eliminado los elementos de la primera lista que coincidan con el segundo parámetro. Debe permitirse dejar sin especificar (para obtener) el tercer parámetro.

Ejemplos:

> elimina([f, e, d, [a, h], a, d, a], a, L)

L = [f, e, d, [a, h], d]

> elimina([f, e, d, [ a, h], a, [d, a]], [a, h], L)

L = [f, e, d, a, [d, a]]

7.- Escriba un predicado repetidos con dos parámetros de tipo lista. Para que el predicado sea verdadero la segunda lista debe ser como la primera pero eliminado del los repetidos todos menos el último. Puede utilizar para ello un predicado auxiliar.  Debe permitirse dejar sin especificar (para obtener) el segundo parámetro.

Ejemplo:

> repetidos([a, b, c, d, a, f, g, d, c, c, h], L)
L=[ b, a, f, g, d, c, h]
