-module(patterns_tests).
-include_lib("eunit/include/eunit.hrl").
%% Before you can use this on Windows, " the Erlang module search path must contain a directory whose name ends in eunit/ebin".
%% See http://erlang.org/doc/apps/eunit/chapter.html#Including_the_EUnit_header_file
-export([]).
%% Unit tests for patterns.erl.
%% Compile this module like any other module.
%% To run all the tests, simply run 'patterns_tests.test().' 
%% (The 'test()' function is automatically generated.)

xOrA_test() ->
  false = patterns:xOrA(true,true),
  false = patterns:xOrA(false,false),
  true  = patterns:xOrA(true,false),
  true  = patterns:xOrA(false,true).

xOrB_test() ->
  false = patterns:xOrB(true,true),
  false = patterns:xOrB(false,false),
  true  = patterns:xOrB(true,false),
  true  = patterns:xOrB(false,true).

xOrC_test() ->
  false = patterns:xOrC(true,true),
  false = patterns:xOrC(false,false),
  true  = patterns:xOrC(true,false),
  true  = patterns:xOrC(false,true).

maxThreeA_test() ->
  3 = patterns:maxThreeA(3,3,3),
  3 = patterns:maxThreeA(3,2,3),
  3 = patterns:maxThreeA(2,3,3),
  3 = patterns:maxThreeA(3,2,2),
  3 = patterns:maxThreeA(2,3,2),
  3 = patterns:maxThreeA(2,2,3),
  6 = patterns:maxThreeA(4,3,6).

maxThree_test() ->
  3 = patterns:maxThree(3,3,3),
  3 = patterns:maxThree(3,2,3),
  3 = patterns:maxThree(2,3,3),
  3 = patterns:maxThree(3,2,2),
  3 = patterns:maxThree(2,3,2),
  3 = patterns:maxThree(2,2,3),
  6 = patterns:maxThree(4,3,6).


howManyEqual_0_test() ->
  0 = patterns:howManyEqual(34,25,36),
  0 = patterns:howManyEqual(36,34,25).

howManyEqual_2_test() ->
  2 = patterns:howManyEqual(34,25,34),
  2 = patterns:howManyEqual(34,34,25),
  2 = patterns:howManyEqual(25,34,34).

howManyEqual_3_test() ->
  ?assert(patterns:howManyEqual(34,34,34) =:= 3).
