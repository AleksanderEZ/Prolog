%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FIBONACCI%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fibo(0, 0).
fibo(1, 1).

fibo(X, V) :- X > 1, X1 is X-1, X2 is X-2,
    fibo(X1, V1), fibo(X2, V2),
    V is V1 + V2.
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%EXPONENCIAL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

expo(_, 0, 1).
expo(X, N, R) :- 
    N >= 1, N1 is N-1,
    expo(X, N1, Z),
    R is X * Z.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%MINIMO%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

minimo([X], X).
minimo([Cabeza|Resto], Cabeza) :- minimo(Resto, MinResto), Cabeza < MinResto.
minimo([Cabeza|Resto], MinResto) :- minimo(Resto, MinResto), not(Cabeza < MinResto). 
    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%INSERTA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

inserta([], X, [X]).
inserta([X1|X2], X, [X1|X2]) :- X =:= X1.
inserta([X1|X2], X, [X,X1|X2]) :- X < X1.
inserta([X1|X2], X, [X1|X4]) :- X > X1, inserta(X2, X, X4).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%INVIERTE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

invierte([], []).
invierte([Cabeza|Resto], Salida) :- invierte(Resto, Inverso), 
        append(Inverso, [Cabeza], Salida).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ELIMINA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

elimina([], _, []).
%elimina([X, Y], Y, [X]) :- !.
elimina([Cabeza|Resto], Y, RestoEliminado) :- 
    Cabeza =:= Y,
    elimina(Resto, Y, RestoEliminado).
elimina([Cabeza|Resto], Y, [Cabeza|RestoEliminado]) :- not(Cabeza =:= Y), elimina(Resto, Y, RestoEliminado).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%REPETIDOS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

repetidos([], []).
repetidos(Lista, ListaSinRepetidos) :- 
    invierte(Lista, ListaInvertida),
    [Cabeza|Resto] = ListaInvertida,
    elimina(Resto, Cabeza, RestoInvertidoSinCabezaRepetida),
    repetidos(RestoInvertidoSinCabezaRepetida, RestoInvertidoSinRepetidos),
    append([Cabeza], RestoInvertidoSinRepetidos, ListaInvertidaSinRepetidos),
    invierte(ListaInvertidaSinRepetidos, ListaSinRepetidos).
    
