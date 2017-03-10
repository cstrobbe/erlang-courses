-module(recursionexamples).
-export([fib/1,pieces/1]).
%% Step 01.19: 
%% 1. Give a recursive definition of fib/1 - to compute Fibonacci numbers.
%% 2. "Define a function 'pieces' so that pieces(N) tells you the maximum number of pieces into which you can cut a piece of paper with N straight line cuts."

%% Assumes the following sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
%% Returns the last number/indexed number instead of the actual sequence.
fib(0) ->
  0;
fib(1) ->
  1;
fib(2) ->
  1;
fib(N) when N > 2 -> %% We let it fail for negative numbers!
  fib(N-1) + fib(N-2).


%% This is also known as the lazy caterer's sequence: https://en.wikipedia.org/wiki/Lazy_caterer%27s_sequence.
pieces(0) ->
  1; %% With 0 cuts, you have a single piece.
pieces(1) ->
  2;
pieces(N) when N > 1 -> %% We let it fail for negative numbers!
   pieces(N-1) + N.

