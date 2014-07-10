:-dynamic listado/1.
%----------------------------------Números-----------------------------------%
%----------------------------------------------------------------------------%
% -------------------------------Sacar Pares---------------------------%
pares(L,P):-findall(X,(member(X,L),0=:=(X mod 2)),P), asserta(listado(P)).

% ----------------------------Sacar Impares----------------------------%
impares(L,I):-findall(X,(member(X,L),not(0=:=(X mod 2))),I), asserta(listado(I)).

% ---------------------------Sacar Positivos---------------------------%
positivos(L,P):-findall(X,(member(X,L),X>0),P), asserta(listado(P)).

% ---------------------------Sacar Negativos---------------------------%
negativos(L,N):-findall(X,(member(X,L),X<0),N), asserta(listado(N)).

%-----------------------------Números Primos---------------------------%
esPrimo(X):- X > 1, Y is 2, not(divisible(X,Y)).
divisible(X,Y):-Y*Y =< X, 0 =:=(X mod Y).
divisible(X,Y):- Y<X, Z is Y+1, divisible(X,Z).
primo(L,P):-findall(X,(member(X,L),esPrimo(X)),P), asserta(listado(P)).

%----------------------------Números Perfectos-------------------------%
perfecto(L,P):-findall(X,(member(X,L),esPerfecto(X)),P), asserta(listado(P)).
