-module(xorvariants).
-export([xOrA/2, xOrB/2, xOrC/2]).
%% Give at least three ways of defining 'exclusive or'.
%% This solution uses 'when', which is not covered in the first week of the course.

xOrA(X,Y)
    when X == Y -> false;
xOrA(_,_)
    -> true.


xOrB(X,Y)
    when X =/= Y -> true;
xOrB(_,_)
    -> false.


xOrC(X,Y)
  when not(X == Y) -> true;
xOrC(_,_)
  -> false.
