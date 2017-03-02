-module(pattern).
-export([xOrA/2, xOrB/2, xOrC/2,maxThree/3,howManyEqual/3]).
%% Give a definition of the function maxThree which takes three integers and returns the maximum of the three.
%% This solution uses 'when', which is not covered in the first week of the course.

%% Give at least three ways of defining 'exclusive or'.
xOrA(X,Y)
    when X == Y -> false;
xOrA(_,_)
    -> true.

xOrB(X,Y)
    when X =/= Y -> true;
xOrB(_,_)
    -> false.

xOrC(X,Y)
  when not(X == Y) -> true;
xOrC(_,_)
  -> false.

%% Give a definition of the function maxThree which takes three integers and returns the maximum of the three.
maxThree(X,Y,Z)
  when (X =< Y) and (Y =< Z) -> Z;
maxThree(X,Y,Z)
  when (X =< Y) and (Y > Z) -> Y;
maxThree(X,_,_)
  -> X.

%% Give a definition of the function howManyEqual which takes three integers and says how many are equal.
howManyEqual(X,Y,Z)
  when (X == Y) and (Y == Z) -> 3;
howManyEqual(X,Y,Z)
  when ((X == Y) xor (Y == Z) xor (X == Z)) -> 2;
howManyEqual(_,_,_)
  -> 0.

