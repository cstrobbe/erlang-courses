-module(recursionexamples_tests).
-include_lib("eunit/include/eunit.hrl").
%% Before you can use this on Windows, " the Erlang module search path must contain a directory whose name ends in eunit/ebin".
%% See http://erlang.org/doc/apps/eunit/chapter.html#Including_the_EUnit_header_file
-export([]).
%% Unit tests for recursionexamples.erl.
%% Compile this module like any other module.
%% To run all the tests, simply run 'patterns_tests.test().' 
%% (The 'test()' function is automatically generated.)

fib_test() ->
  0   = recursionexamples:fib(0),
  1   = recursionexamples:fib(1),
  1   = recursionexamples:fib(2),
  2   = recursionexamples:fib(3),
  3   = recursionexamples:fib(4),
  5   = recursionexamples:fib(5),
  8   = recursionexamples:fib(6),
  13  = recursionexamples:fib(7),
  21  = recursionexamples:fib(8),
  34  = recursionexamples:fib(9),
  55  = recursionexamples:fib(10),
  89  = recursionexamples:fib(11),
  144 = recursionexamples:fib(12),
  233 = recursionexamples:fib(13).


pieces_test() ->
  1   = recursionexamples:pieces(0),
  2   = recursionexamples:pieces(1),
  4   = recursionexamples:pieces(2),
  7   = recursionexamples:pieces(3),
  11  = recursionexamples:pieces(4),
  16  = recursionexamples:pieces(5),
  22  = recursionexamples:pieces(6),
  29  = recursionexamples:pieces(7),
  37  = recursionexamples:pieces(8),
  46  = recursionexamples:pieces(9),
  56  = recursionexamples:pieces(10),
  67  = recursionexamples:pieces(11),
  79  = recursionexamples:pieces(12),
  92  = recursionexamples:pieces(13),
  106 = recursionexamples:pieces(14),
  121 = recursionexamples:pieces(15).

