-module(maximumof3).
-export([maxThree/3,howManyEqual/3]).
%% Give a definition of the function maxThree which takes three integers and returns the maximum of the three.
%% This solution uses 'when', which is not covered in the first week of the course.

maxThree(X,Y,Z)
  when (X =< Y) and (Y =< Z) -> Z;
maxThree(X,Y,Z)
  when (X =< Y) and (Y > Z) -> Y;
maxThree(X,_,_)
  -> X.

howManyEqual(X,Y,Z)
  when (X == Y) and (Y == Z) -> 3;
howManyEqual(X,Y,Z)
  when ((X == Y) xor (Y == Z) xor (X == Z)) -> 2;
howManyEqual(_,_,_)
  -> 0.

