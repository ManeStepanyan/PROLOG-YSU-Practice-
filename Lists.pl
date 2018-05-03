
// Length of the list
length([],0).
length([_|L],Y):- length(L,Y1), Y is Y1+1.
// Sum of the elements
sum([],0).
sum([A|B],S):- sum(B,S1), S is S1+A.
// Sum of even elements
even(0).
even(X,Y):-X>0, X1 is X-2, even(X1).
even(X,Y):-X<0, X1 is -X, even(X1).

sumEven([],0).
sumEven([A|B],S):-  even(A), sumEven(B,S1), S1= S+A.
sumEven([A|B],S):-  sumEven(B,S).
// count of non-zero elements
count_of_nzero([_],0).
count_of_nzero([A|B],COUNT):- A>0, count_of_nzero(B,COUNT).
count_of_nzero([A|B],COUNT):- A<0, count_of_nzero(B,COUNT).
count_of_nzero([A|B],COUNT):- A=0, count_of_nzero(B,COUNT1), COUNT is COUNT1+1.
// maximum element of list
max(x,y,z):- x>=y, Z is X.
max(x,y,z):- x<y, Z is Y
maxlist([_],-1).
maxlist([X|Y], X) :- Y=[].
maxlist([A|B],MAX):- maxlist(B,MAX1), max(A,MAX1, MAX).
// minimum element of list

min(x,y,z):= x<=y, z is x
min(x,y,z):= x>y, z is y
minlist([],-1).
minlist([A|B],MIN):- minlist(B,MIN1), min(A,MIN1,MIN).
minlist([A|[]],A).
// append lists
append([], L, L):-!.
append([X|L1], L2, [X|L]):- append(L1, L2, L).

//reverse lists
reverse([],[]):- !.
reverse([A|B],C):-  reverse(B,R), append(R,A,C).

/*  Add value to the end of the list  */
cons(X, [], [X]).
cons(X,[A|B],[C|D]):- cons(X,B,D).
/*   Reverse a list   */
toReverse([],[]).
toReverse([A|B], [C]):- toReverse( B, D  ), cons( A,D,C).
  /* sort a list */
sorter([],[]).
sorter([X|Y],Z):- sorter( Y,Z1), insertik(X,Z1,Z).
 insertik(X,[],[X]).
 insertik(X,[Y|Z], [X|[Y|Z]]):- X=<Y.
 insertik(X,[Y|Z],[Y|Z1]):- X>Y, insertik(X,Z,Z1 ).
/* delete last element from the list */
deletelastelement([A|[]], []).
deletelastelement([X|Y], [X,Z]):-deletelastelement(Y,Z).

/* double the specified value in the list   */
func(X,[],[]).
func(X,[A|B],[A|[A|Z]]):-X=A, func(X,B,Z).
func(X,[A|B],[A|Z]):- func(X,B,Z).
