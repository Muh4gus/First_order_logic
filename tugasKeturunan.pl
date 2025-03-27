ayah(david, liza).
ayah(david, john).
ayah(jack, ray).
ayah(john, peter).
ayah(john, mary).

ibu(amy, liza).
ibu(amy, john).
ibu(karen, ray).
ibu(susan, peter).
ibu(susan, mary).

laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(ray).
laki_laki(peter).

perempuan(amy).
perempuan(karen).
perempuan(susan).
perempuan(liza).
perempuan(mary).


is_anak(X, Y) :- ayah(Y, X); ibu(Y, X).
is_saudara(X, Y) :- ayah(Z, X), ayah(Z, Y), X \= Y.
is_kakek(X, Z) :- ayah(X, Y), ayah(Y, Z).
is_nenek(X, Z) :- ibu(X, Y), ibu(Y, Z).
is_cucu(X, Y) :- is_kakek(Y, X); is_nenek(Y, X).
