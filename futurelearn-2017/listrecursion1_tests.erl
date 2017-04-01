-module(listrecursion1_tests).
-include_lib("eunit/include/eunit.hrl").
%% Before you can use this on Windows, "the Erlang module search path must contain a directory whose name ends in eunit/ebin".
%% See http://erlang.org/doc/apps/eunit/chapter.html#Including_the_EUnit_header_file
-export([]).
%% Unit tests for recursionexamples.erl.
%% Compile this module like any other module.
%% To run all the tests, simply run 'patternsassignment_tests:test().' 
%% (The 'test()' function is automatically generated.)

productdirect_test() ->
  %%0     = listrecursion1:productdirect([]),
  1     = listrecursion1:productdirect([1]),
  3     = listrecursion1:productdirect([3,1]),
  20    = listrecursion1:productdirect([5,4]),
  1512  = listrecursion1:productdirect([9,7,24]).

producttail_test() ->
  %%0     = listrecursion1:producttail([]),
  1     = listrecursion1:producttail([1]),
  3     = listrecursion1:producttail([3,1]),
  20    = listrecursion1:producttail([5,4]),
  1512  = listrecursion1:producttail([9,7,24]).


maximumdirect_test() ->
  42    = listrecursion1:maximumdirect([42]),
  13    = listrecursion1:maximumdirect([1,13,3]),
  24    = listrecursion1:maximumdirect([24,13,24]),
  49    = listrecursion1:maximumdirect([24,49,24]),
  108   = listrecursion1:maximumdirect([24,49,108,24]),
  108   = listrecursion1:maximumdirect([108,24,49,24]).

maximumtail_test() ->
  42    = listrecursion1:maximumtail([42]),
  13    = listrecursion1:maximumtail([1,13,3]),
  24    = listrecursion1:maximumtail([24,13,24]),
  49    = listrecursion1:maximumtail([24,49,24]),
  108   = listrecursion1:maximumtail([24,49,108,24]),
  108   = listrecursion1:maximumtail([108,24,49,24]).


