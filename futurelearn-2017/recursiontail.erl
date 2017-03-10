-module(recursiontail).
-export([fib/1,fib/3,perfect/1]).
%% Step 01.21: 
%% 1. Define a function fib/3 - to compute Fibonacci numbers - using tail recursion.
%% 2. "Define a function perfect/1 that takes a positive number N and returns a boolean which indicates whether or not the number is perfect."

%% Assumes the following sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
fib(0) -> 0;
fib(1) -> 1;
fib(2) -> 1;
fib(X) when X > 2 -> %% Let it fail for negative numbers!
  fib(0,1,X).


fib(A, _, 0) ->
  A;
fib(A, B, N) when N >= 1 -> 
  fib(B, A+B, N-1).

%% step-by-step evaluation of fib(4). : 
%% fib(4)
%% = fib(0,1,4)
%% = fib(1,1,3)
%% = fib(1,2,2)
%% = fib(2,3,1)
%% = fib(3,5,0)
%% = 3

perfect(X) ->
  io:format("perfect(~p) not implemented yet!~nbye~n", [X]). %% TODO 

