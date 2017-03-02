-module(second).
-export([hypotenuse/2, perimeter/2, area/2, arearighttriangle/2]).

%% Calculate hypotenuse of a right-angled triangle given the lengths of the two other sides.
hypotenuse(X,Y) ->
  math:sqrt(first:square(X) + first:square(Y)).

%% Calculate the perimeter of a right-angled triangle given the lengths of the two other sides.
perimeter(X,Y) -> 
  X + Y + hypotenuse(X,Y).

%% Calculate the area of a triangle given the lengths of the two other sides.
%% See "law of cosines": https://en.wikipedia.org/wiki/Trigonometry#Law_of_cosines
area(X,Y) ->
  H = hypotenuse(X,Y),
  S = (X + Y + H) / 2,
  math:sqrt( S * (S - X) * (S - Y) * ( S - H)).

%% Calculate the area of a right-angled triangle given the lengths of the two other sides.
arearighttriangle(X,Y) -> 
  (X * Y) / 2.
