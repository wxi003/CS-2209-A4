/******   Question 1   ******/

male(john1).
male(peter).
male(rob).
male(george).
male(john2).
male(jay).

female(sue).
female(ida).
female(estelle).
female(mary).
female(grace).

parent(estelle,sue).
parent(estelle,john1).
parent(george,ida).
parent(george,peter).
parent(john2,estelle).
parent(john2,george).
parent(mary,estelle).
parent(mary,george).
parent(jay,estelle).
parent(jay,george).
parent(rob,sue).
parent(rob,john1).
parent(grace,ida).
parent(grace,peter).


married(sue, john1).
married(ida, peter).
married(estelle, george).

father(Child, Dad) :- male(Dad), parent(Child, Dad).

mother(Child, Mom) :- female(Mom), parent(Child, Mom).

grandfather(Grandchild, Grandfather) :- male(Grandfather), parent(Grandchild, Parent), parent(Parent, Grandfather).

grandparent(Gc, Gp) :- parent(Gc, P), parent(P, Gp).

ancestor(Person, A) :- parent(Person, A).
ancestor(Person, A) :- parent(Person, P), ancestor(P, A).

brother(Sibling, B) :- male(B), father(Sibling, F), father(B, F), B \= Sibling, mother(Sibling, M), mother(B, M).
sister(Sibling, S) :- female(S), father(Sibling, F), father(S, F), S \= Sibling, mother(Sibling, M), mother(S, M).
a_pair_of_brother(Sibling, B) :- male(B), male(Sibling), father(Sibling, F), father(B, F), B \= Sibling, mother(Sibling, M), mother(B, M).

uncle(C, Uncle) :- male(Uncle), parent(C, P), brother(P, Uncle). 
uncle(C, Uncle) :- male(Uncle), parent(C, P), sister(P, S), married(Uncle, S).
aunt(C, Aunt) :- female(Aunt), parent(C, P), sister(P, Aunt).
aunt(C, Aunt) :- female(Aunt), parent(C, P), brother(P, B), married(Aunt, B).

mother_in_law(CInLaw, MInLaw) :- female(MInLaw), married(CInLaw, C), parent(C, MInLaw).



/******   Question 2   ******/

city(toronto).
city(orlando).
city(detroit).
city(chicago).



airport(detroit, dtw).
airport(chicago, ohare).
airport(toronto, pearson).
airport(chicago, midway).
airport(orlando, mco).


battle(midway).
battle(pearl_harbor).
battle(britain).


war_hero(woody).
war_hero(murphy).
war_hero(ohare).



/******   Question 3   ******/

last(X,[X]).
last(X,[_|Xs]) :- last(X,Xs).

adjacent(X,Y,[X,Y|_]).
adjacent(X,Y,[_|Zs]) :- adjacent(X,Y,Zs).