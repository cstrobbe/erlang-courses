-module(patternsassignment_tests).
-include_lib("eunit/include/eunit.hrl").
%% Before you can use this on Windows, "the Erlang module search path must contain a directory whose name ends in eunit/ebin".
%% See http://erlang.org/doc/apps/eunit/chapter.html#Including_the_EUnit_header_file
-export([]).
%% Unit tests for recursionexamples.erl.
%% Compile this module like any other module.
%% To run all the tests, simply run 'patternsassignment_tests:test().' 
%% (The 'test()' function is automatically generated.)


perimeter_test() ->
  18.84955592153876 = patternsassignment:perimeter({circle, {0,0}, 3}),
  31.415926535897932384626433832795 = patternsassignment:perimeter({circle, {-1,-1}, 5}),
  4 = patternsassignment:perimeter({rectangle, {0,0}, 1,1}),
  8 = patternsassignment:perimeter({square, {0,0}, 2}),
  6 = patternsassignment:perimeter({triangle, {0,0}, 2,2,2}).

area_test() ->
  28.274333882308139146163790449516 = patternsassignment:area({circle, {0,0}, 3}),
  4 = patternsassignment:area({square, {0,0}, 2}),
  1 = patternsassignment:area({rectangle, {0,0}, 1,1}),
  6.0 = patternsassignment:perimeter({triangle, {0,0}, 3,4,5}).

%% sumbitsdirect_test() ->
%%   3 = patternsassignment:sumbitsdirect(7),
%%   1 = patternsassignment:sumbitsdirect(8),
%%   4 = patternsassignment:sumbitsdirect(15).


%% sumbits_test() ->
%%   3 = patternsassignment:sumbits(7),
%%   1 = patternsassignment:sumbits(8),
%%   4 = patternsassignment:sumbits(15).


countbits_test() ->
  1 = patternsassignment:countbits(1),     %% 0
  2 = patternsassignment:countbits(2),     %% 1
  2 = patternsassignment:countbits(3),     %% 11
  3 = patternsassignment:countbits(4),     %% 100
  3 = patternsassignment:countbits(7),     %% 111
  4 = patternsassignment:countbits(8),     %% 1000
  4 = patternsassignment:countbits(9),     %% 1001
  4 = patternsassignment:countbits(15),    %% 1111
  5 = patternsassignment:countbits(16),    %% 10000
  6 = patternsassignment:countbits(33),    %% 10 0001
  7 = patternsassignment:countbits(66).    %% 100 0010

