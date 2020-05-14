# Spritz+React4j TodoMVC variant

[![Build Status](https://api.travis-ci.com/react4j/react4j-todomvc.png?branch=spritz)](http://travis-ci.com/react4j/react4j-todomvc)

This [TodoMVC](http://todomvc.com/) implementation is written using:

* [React4j](https://react4j.github.io) for the view layer.
* [Spritz](https://spritz.github.io/) for the model layer.

## TODO

* Currently we manually trigger re-renders by explicitly serializing state from streams into a field. Should this
  some how be automated via Arez's `ComputableValue` such as:
  ```java
  @Memoize abstract int getMyValue();

  @MemoizeStream Stream<Integer> getMyValueStream() { return ...; }
  ```

* There should be an annotation like `@CascadeDispose` that automatically cancels subscription during dispose.
  Maybe Arez should be enhanced to support this by allowing `@CascadeDispose` to specify an interface to use to
  release resources. If it has a single no-arg, no-return, no-throw method then assume that is resource release
  method or perhaps search standard names (`dispose`, `cancel`, `close`, `release`) or maybe fully specify it via
  `@CascadeDispose(type=Subscription.class,method=cancel)`.

* Lifecycle methods can be represented as a `Stream`. You should be able to declare methods like
  `abstract Stream<Object> preRender$();` and have the framework generate them as appropriate.

* Fix the filtering of items based on route
