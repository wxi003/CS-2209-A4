# CS 2209 - APPLIED LOGIC FOR COMPUTER SCIENCE - Western University
Q1. [Hint: need to use john1, john2 to distinguish the two John]
Sue    John        Ida Peter
  \     /            \   /
   \   /              \ /
Rob, Estelle      George, Grace
        \          /
         \        /
      John, Mary, Jay
Based on the family tree above, add basic facts about the family members above. Then write rules
about grandfather, grandparent, ancestor (that also works for a large/deep family tree), uncle,
mother_in_law, brother, and a_pair_of_brother. Use common meanings for these relations, and if in
doubt, you can define the relations to make them clear. Issue several queries (including the ones
with variables and use “;” to get multiple answers) for each predicate to verify you get the correct
answer(s).

Q2. As we discussed in the lecture, Watson failed in answering this question in the Jeopardy!
Write a Prolog program so when the query is issued, the correct answer (Chicago) will be returned. You
need to include facts about several US and Canadian cities (including Chicago, Toronto, Detroit, Orlando,
etc), their airport names, several WWII hero names, and so on. Load your code in Prolog, issue the
query, and your Prolog program should return the correct answer (Chicago). To make the Prolog
programming easier, you could modify the clue to be "One of its airports is named for a World War II
hero; the other airport, for a World War II battle".
[Hint: You Prolog code can be something like: my_query(Z) :- city(Z), airport(Z,X), ..., ..., ... .]

Q3. This question concerns lists in Prolog. (Note: Prolog probably has built-in last, append, etc. so you
can use my_last, my_append, instead)
Define the following relations:
a. last(X,Xs) is true if X is the last element in the list Xs. For example, last(c, [a, b, c]) would be true; or if
you query last(X, [a, b, c]), it would return X=c.
b. adjacent(X,Y,Zs) is true if the elements X and Y are adjacent in the list Zs. For example, adjacent(d, f,
[a, b, c, d, f, g]) is true.
