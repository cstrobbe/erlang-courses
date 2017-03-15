-module(recursiontail_tests).
-include_lib("eunit/include/eunit.hrl").
%% Before you can use this on Windows, "the Erlang module search path must contain a directory whose name ends in eunit/ebin".
%% See http://erlang.org/doc/apps/eunit/chapter.html#Including_the_EUnit_header_file
-export([]).
%% Unit tests for patterns.erl.
%% Compile this module like any other module.
%% To run all the tests, simply run 'recursiontail_tests:test().' 
%% (The 'test()' function is automatically generated.)

fib_test() ->
  0   = recursiontail:fib(0),
  1   = recursiontail:fib(1),
  1   = recursiontail:fib(2),
  2   = recursiontail:fib(3),
  3   = recursiontail:fib(4),
  5   = recursiontail:fib(5),
  8   = recursiontail:fib(6),
  13  = recursiontail:fib(7),
  21  = recursiontail:fib(8),
  34  = recursiontail:fib(9),
  55  = recursiontail:fib(10),
  89  = recursiontail:fib(11),
  144 = recursiontail:fib(12),
  233 = recursiontail:fib(13).

%% See list of perfect numbers at https://en.wikipedia.org/wiki/List_of_perfect_numbers 
perfect_ok_test() ->
  true  = recursiontail:perfect(6),
  true  = recursiontail:perfect(28),
  true  = recursiontail:perfect(496),
  true  = recursiontail:perfect(8128),
  true  = recursiontail:perfect(33550336),
  true  = recursiontail:perfect(8589869056).

perfect_nok_test() ->
  false  = recursiontail:perfect(5),
  false  = recursiontail:perfect(27),
  false  = recursiontail:perfect(495),
  false  = recursiontail:perfect(8127),
  false  = recursiontail:perfect(33550335),
  false  = recursiontail:perfect(8589869055).

%% Separate tests for prime numbers. See list at https://en.wikipedia.org/wiki/List_of_prime_numbers
perfect_nok_prime_test() ->
  false  = recursiontail:perfect(2),
  false  = recursiontail:perfect(3),
  false  = recursiontail:perfect(5),
  false  = recursiontail:perfect(7),
  false  = recursiontail:perfect(11),
  false  = recursiontail:perfect(13),

  false  = recursiontail:perfect(71),
  false  = recursiontail:perfect(173),
  false  = recursiontail:perfect(281),
  false  = recursiontail:perfect(409),
  false  = recursiontail:perfect(541),
  false  = recursiontail:perfect(695),
  false  = recursiontail:perfect(809).

