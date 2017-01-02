

materialize(path,infinity,infinity,keys(4:list)).
materialize(bestPath,infinity,infinity,keys(2)).

/* Rules */

r1 path(@X,Y,C,P) :- link(@X,Y,C),
        P1:=f_append(X),
        P2:=f_append(Y),
        P:=f_concat(P1,P2).

r2 path(@X,Y,C,P) :- link(@X,Z,C1),
       bestPath(@Z,Y,C2,P2),
       C:=C1+C2,
       f_member(P2,X)==0,
       P1:=f_append(X),
       P:=f_concat(P1,P2).

r3 bestPath(@X,Y,a_MIN<C>, P) :- path(@X,Y,C,P).
