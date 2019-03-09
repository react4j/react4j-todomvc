# Spritz+React4j TodoMVC variant

[![Build Status](https://secure.travis-ci.org/react4j/react4j-todomvc.png?branch=raw_spritz)](http://travis-ci.org/react4j/react4j-todomvc)

This [TodoMVC](http://todomvc.com/) implementation is written using:

* [React4j](https://react4j.github.io) for the view layer.
* [Spritz](https://spritz.github.io/) for the model layer.


## TODO

* Route should be subject.

* Each action is a subject.

* Stream Props and other could be paired with another method that get's current value. Or is this `ComputableValue`?

* Should auto-generate cancel of `Subscription` instances much like `@CascadeDispose`?

* Some lifecycle methods should be represented by an observable stream that can subscribe to to produce effects
