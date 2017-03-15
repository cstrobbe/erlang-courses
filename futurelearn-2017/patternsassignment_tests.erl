-module(patternsassignment_tests).
-include_lib("eunit/include/eunit.hrl").
%% Before you can use this on Windows, "the Erlang module search path must contain a directory whose name ends in eunit/ebin".
%% See http://erlang.org/doc/apps/eunit/chapter.html#Including_the_EUnit_header_file
-export([]).
%% Unit tests for recursionexamples.erl.
%% Compile this module like any other module.
%% To run all the tests, simply run 'patternsassignment_tests:test().' 
%% (The 'test()' function is automatically generated.)

bits_test() ->
  1 = patternsassignment:bits(1),     %% 0
  2 = patternsassignment:bits(2),     %% 1
  2 = patternsassignment:bits(3),     %% 11
  3 = patternsassignment:bits(4),     %% 100
  3 = patternsassignment:bits(7),     %% 111
  4 = patternsassignment:bits(8),     %% 1000
  4 = patternsassignment:bits(9),     %% 1001
  4 = patternsassignment:bits(15),    %% 1111
  5 = patternsassignment:bits(16),    %% 10000
  6 = patternsassignment:bits(33),    %% 10 0001
  7 = patternsassignment:bits(66).    %% 100 0010

