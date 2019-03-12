# Spritz+React4j TodoMVC variant

[![Build Status](https://secure.travis-ci.org/react4j/react4j-todomvc.png?branch=raw_spritz)](http://travis-ci.org/react4j/react4j-todomvc)

This [TodoMVC](http://todomvc.com/) implementation is written using:

* [React4j](https://react4j.github.io) for the view layer.
* [Spritz](https://spritz.github.io/) for the model layer.

## TODO

* Currently we manually trigger re-renders by explicitly serializing state from streams into a field. Should this
  some how be automated via Arez's `ComputableValue` such as:
  - `@Memoize abstract int getMyValue(); @MemoizeStream Stream<Integer> getMyValueStream() { return ...; }` 

* `Stream.subscribe(...)` should return a `Subscription` and there should be an annotation ala `@CascadeDispose`
  that automatically cancels subscription. Maybe Arez should be enhanced to support this via
  `@CascadeDispose(type=Subscription.class,method=cancel)` or some other pattern that allows arbitrary release
  of resources?

* Lifecycle methods can be represented as a `Stream`. You should be able to declare methods like
  `abstract Stream<Object> preRender$();` and have the framework generate them as appropriate.
