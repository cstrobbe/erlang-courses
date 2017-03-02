-module(maximumof3).
-export([maxThree/3,howManyEqual/3]).
%% Give a definition of the function maxThree which takes three integers and returns the maximum of the three.

maxThree(X,Y,Z)
  when (X =< Y) and (Y =< Z) -> Z;
maxThree(X,Y,Z)
  when (X =< Y) and (Y > Z) -> Y;
maxThree(X,_,_)
  -> X.
%maxThree(X,Y,Z)
  %when (X >= Y) and (Y >= Z) -> X.
  % the above does not work with maximumof3:maxThree(6,4,5).

howManyEqual(X,Y,Z)
  when (X == Y) and (Y == Z) -> 3;
howManyEqual(X,Y,Z)
  when ((X == Y) xor (Y == Z) xor (X == Z)) -> 2;
howManyEqual(_,_,_)
  -> 0.

