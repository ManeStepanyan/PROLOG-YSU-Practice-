//EvenCheck
even(0).
even(X):- X>0, X1 is X-2, even(X1).
// Factorial
factorial(0,1):- !.
factorial(X,Y):- X>0, X1 is X-1, factorial(X1,Y1), Y is Y1*X.
factorial(X,0):- X<0.
// Fibonacci x'th number
fibonacci(0,1).
fibonacci(1,1).
fibonacci(X,Y):- X>1,X1 is X-1, X2 is X-2,  fibonacci(X1,Y1), fibonacci(X2,Y2), Y is Y1+Y2.
// x! + 2x!
sumFactorial(X,Y):- factorial(X,Y1), X1 is X*2, factorial(X1, Y2), Y is Y1+Y2.
// (x*y)!
multFactorial(X,Y,Z):- X1 is X*Y, factorial(X1,Z).
// if x>=0 sum of even numbers, else 0
evenSum(1,0).
evenSum(0,0):- X<=0.
evenSum(X,Y):- X>0, even(X),X1 is X-2, evenSum(X1,Y1), Y is Y1+ X.
evenSum(X,Y):- X>0,X1 is X-1, evenSum(X1,Y).
// if x>=0 multiplication of odd numbers, else 0
odd(1).
odd(X) :- X > 0, X1 is X - 2, odd(X1).


multOdds(X,0):-X <=0.
multOdds(1,1).
multOdds(X,Y):-  X>0, odd(X), X1 is X-2, multOdds(X1,Y1), Y is Y1*X.
multOdds(X,Y):- X>0, X1 is X-1, multOdds(X1,Y).
// half factorial
halffactorial(X,0):- X<=0.
halffactorial(1,1).
halffactorial(2,2).
halffactorial(X,Y):- X>0, X1 is X-2, halffactorial(X1,Y1), Y is X*Y1.

// Greatest Common Divisor if they are >=0, else 0
gcd(X, X, X).
gcd(X,Y,Z):- X>=Y, Y>0, X1 is X-Y, gcd(X1,Y,Z).
gcd(X,Y,Z):- X<Y,X>0, X1 is Y-X, gcd(X1,X,Z).
// number is prime
prime(2).
prime(X):- floor(X/2,Y), parzHelp(X,Y).

parzHelp(_,1).
parzHelp(X,Y):-  X1 is X rem Y, X1 > 0,Y1 is Y-1, parzHelp(X,Y1).
// perfect number
perfect(1).
perfect(X):- floor(X/2,Y), perfectHelperSum(X,Y,0).

perfectHelperSum(X,0,X).
perfectHelperSum(X,Y,Z):-X>0, Y>0, X1 is X rem Y, X1= 0,Y1 is Y-1, Z1 is Z+Y,  perfectHelperSum(X,Y1,Z1).
perfectHelperSum(X,Y,Z):- X>0, Y>0, X1 is X rem Y, X1> 0,Y1 is Y-1,  perfectHelperSum(X,Y1,Z).

// floor and rem
floor1(X,0):- X>=0, X<1.
floor1(X,Y):- X>1, X1 is X-1, floor1(X1,Y1), Y is Y1+1.


floor2(X,0):- X>=0, X<1.
floor2(X,Y):- X>=1, X1 is X-1, floor1(X1,Y1), Y is Y1+1.
floor2(X,Y):- X<0, X1 is -X, floor1(X1,Y1), Y is -Y1.

rem1(X,Y,Z):-Y>0, X>=Y, X1 is X-Y, rm(X1, Y, Z).
rem1(X,Y,X):-X<Y, Y>0.
