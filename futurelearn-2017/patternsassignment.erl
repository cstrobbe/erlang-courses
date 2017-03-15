-module(patternsassignment).
-export([perimeter/1, area/1, enclose/1, bits/1]).
%% Step 1.24
%% SHAPES
%% "Define a function perimeter/1 which takes a shape and returns the perimeter of the shape."
%% "Choose a suitable representation of triangles, and augment area/1 and perimeter/1 to handle this case too."
%% "Define a function enclose/1 that takes a shape an returns the smallest enclosing rectangle of the shape." 


perimeter({circle, {_X,_Y}, R}) ->
  math:pi()*R*2; %% @@check formula!
perimeter({rectangle, {_X,_Y}, H, H}) -> %% assuming that a square is not represented as {square, {X,Y}, H, H}
  4*H;
perimeter({rectangle, {_X,_Y}, H, W}) ->
  (2*H)+(2*W);
perimeter({triangle, {_X,_Y}, A, B, C}) ->
  A+B+C. 


area({circle, {_X,_Y}, R}) ->
  math:pi()*R*R;
area({rectangle, {_X,_Y}, H, H}) -> %% a square
  H*H;
area({rectangle, {_X,_Y}, H, W}) ->
  H*W;
area({triangle, {_X,_Y}, A, B, C}) -> %% see second.erl
  S = (A + B + C) /2,
  math:sqrt(S * (S - A) * (S - B) * ( S - C)).


enclose(X) ->
  io:format("enclose(~p) not implemented. Please consult a geometry textbook.~nbye~n", [X]). %% WONT DO 

%% SUMMING THE BITS
%% "Define a function bits/1 that takes a positive integer N and returns the sum of the bits in the binary representation. For example bits(7) is 3 and bits(8) is 1."
%% "See whether you can make both a direct recursive and a tail recursive definition. Which do you think is better? Why?"

bits(X) ->
  bitsfromdecimal(X, 1).

bitsfromdecimal(0, C) ->
  C;
bitsfromdecimal(1, C) ->
  C;
bitsfromdecimal(X, C) ->
  bitsfromdecimal(X div 2, C+1).

