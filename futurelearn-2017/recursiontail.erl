-module(recursiontail).
-export([fib/1,fib/3,perfect/1,isperfect/1]).
%% Step 01.21: 
%% 1. Define a function fib/3 - to compute Fibonacci numbers - using tail recursion.
%% 2. "Define a function perfect/1 that takes a positive number N and returns a boolean which indicates whether or not the number is perfect."

%% Assumes the following sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
fib(0) -> 0;
fib(1) -> 1;
fib(N) when N >= 1 -> %% Let it fail for negative numbers!
  fib(0,1,N).

fib(A, _, 0) ->
  A;
fib(A, B, N) when N >= 1 -> %% Same guard as in fib(X).
  fib(B, A+B, N-1).

%% step-by-step evaluation of fib(4). : 
%% fib(4)
%% = fib(0,1,4)
%% = fib(1,1,3)
%% = fib(1,2,2)
%% = fib(2,3,1)
%% = fib(3,5,0)
%% = 3

%% Why calculate what you already know? :-P
perfect(6) -> true;
perfect(28) -> true;
perfect(496) -> true;
perfect(8128) -> true;
perfect(33550336) -> true;
perfect(X) when X < 6 -> false;
perfect(X) when X < 28 -> false;
perfect(X) when X < 496 -> false;
perfect(X) when X < 8128 -> false;
perfect(X) when X < 33550336 -> false;
perfect(X) when X > 33550336 ->
  isperfect(X).

isperfect(X) ->
  io:format("perfect(~p) not implemented yet!~nbye~n", [X]). %% TODO 


