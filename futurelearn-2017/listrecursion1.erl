-module(listrecursion1).
-export([productdirect/1, producttail/1]).
-export([maximumdirect/1, maximumtail/1]).
-export([maxoftwo/2, head/1, tail/1, second/1]).
%% Step 2.6
%% Define a function "product" which takes a list of numbers and returns the product of the numbers in the list. 
%% (The product of an empty list is usually taken to be 1.)
%% Define a function "maximum" which takes a list of numbers and returns the highest number in the list.
%% In each case, define a version with direct recursion and one with tail recursion.

%% Using direct recursion:
productdirect([]) 
  -> 1;
%% Not needed:
%%productdirect([X]) 
%%  -> X;
productdirect([X|Xs]) 
  -> X * productdirect(Xs).


%% Using tail recursion and an accumulator:
producttail(Xs)
  -> producttail(Xs, 1).

producttail([], P)
  -> P;
producttail([X|Xs], P) ->
  producttail(Xs, X*P).

%% Using direct recursion:
maximumdirect([]) 
  -> 0;
maximumdirect([X])
  -> X;
maximumdirect([X,Y|Zs])
  -> maximumdirect([max(X,Y), head(Zs), tail(Zs)]).
  %% equivalent of maximumdirect([max(X,Y), Zs]). %% ??


%% Using tail recursion and an accumulator:
maximumtail(Xs)
  -> maximumtail(Xs, 0).

maximumtail([], 0)
  -> 0;
maximumtail([X], M) 
  -> max(X,M);
maximumtail([X|Xs], M) 
  -> maximumtail(Xs, [max(X,M)]).


%% Helper functions:
maxoftwo(X,Y) 
  when (X > Y) -> X;
maxoftwo(X,Y) 
  when (X =< Y) -> Y.

%% from step 2.2:
head([X|_Xs]) -> X.
tail([_X|Xs]) -> Xs.
second([_X,Y|_Zs]) -> Y. 
