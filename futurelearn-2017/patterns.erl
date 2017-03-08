-module(patterns).
-export([xOrA/2, xOrB/2, xOrC/2,maxThreeA/3,maxThree/3,howManyEqual/3]).
%% Give a definition of the function maxThree which takes three integers and returns the maximum of the three.
%% This solution uses 'when', which is not covered in the first week of the course.

%% Give at least three ways of defining 'exclusive or'.
xOrA(X,Y)
    when X == Y -> false;
xOrA(_,_)
    -> true.

xOrB(X,Y) ->
  not(X == Y).

xOrC(X,Y) ->
  X=/=Y.


%% Give a definition of the function maxThree which takes three integers and returns the maximum of the three.
maxThreeA(X,Y,Z)
  when (X =< Y) and (Y =< Z) -> Z;
maxThreeA(X,Y,Z)
  when (X =< Z) and (Y < Z) -> Z;
maxThreeA(X,Y,Z)
  when (X =< Y) and (Y > Z) -> Y;
maxThreeA(X,_,_)
  -> X.

maxThree(X,Y,Z) ->
  max(X, max(Y,Z)).


%% Give a definition of the function howManyEqual which takes three integers and says how many are equal.
howManyEqual(X,Y,Z)
  when (X == Y) and (Y == Z) -> 3;
howManyEqual(X,Y,Z)
  when ((X == Y) xor (Y == Z) xor (X == Z)) -> 2;
howManyEqual(_,_,_)
  -> 0.


