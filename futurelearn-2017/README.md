# Erlang MOOCs on FutureLearn, 2017

Exercise solutions for the courses

* [Functional Programming in Erlang](https://www.futurelearn.com/courses/functional-programming-erlang) (3 weeks, 20 February – 12 March 2017);
* [Concurrent Programming in Erlang](https://www.futurelearn.com/courses/concurrent-programming-erlang) (3 weeks, 3 April –  23 April 2017).

## Functional Programming in Erlang

* Step 1.05: [first.erl](first.erl) and [second.erl](second.erl).
* Step 1.15: Variable and pattern matching in practice:
  * [pattern.erl](pattern.erl);
  * [patterns.erl](patterns.erl), with unit tests in [patterns_tests.erl](patterns_tests.erl) (inspired by Brian Shaver's solution, listed below).
  * see also:
    * [pattern.erl](https://github.com/nitkna/erlang-practise/blob/master/pattern.erl) by nitkna, which makes very effecient use of pattern matching.
    * [patterns.erl](https://gist.github.com/shakerlxxv/c4ce9ba760c68582da8c98b19b410cf1) by shakerlxxv / Brian Shaver, which includes unit tests with [EUnit](http://erlang.org/doc/apps/eunit/chapter.html).
    * [third.erl](https://gist.github.com/tejasbubane/624fec099d616dfaaa26dd2b14162821#file-third-erl), which uses `andalso` and `orelse`.
* Step 1.19: Recursion examples: Fibonnacci and [lazy caterer's sequence](https://en.wikipedia.org/wiki/Lazy_caterer%27s_sequence):
  * [recursionexamples.erl](recursionexamples.erl), with unit tests in [recursionexamples_tests.erl](recursionexamples_tests.erl).
* Step 1.21: Tail recursion: Fibonacci and checking whether N is a [perfect number](https://en.wikipedia.org/wiki/Perfect_number).
  * [recursiontail.erl](recursiontail.erl) and [unit tests for recursiontail.erl](recursiontail_tests.erl).
  * see also [What is tail recursion?](http://stackoverflow.com/questions/33923/what-is-tail-recursion) on StackOverflow (where some examples are misleading, unfortunately)
* Step 1.24: Pattern matching assignment: [patternsassignment.erl](patternsassignment.erl) (partial solution) and [patternsassignment_tests.erl](unit tests).

## Concurrent Programming in Erlang

(Later.)

