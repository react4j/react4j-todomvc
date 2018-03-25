# React4j TodoMVC

This repository contains several implementations of the [TodoMVC](http://todomvc.com/) application written using
[React4j](https://react4j.github.io). The project gives you an idea about what an application built using React4j
looks like.

The following variants are available:

* [raw](https://github.com/react4j/react4j-todomvc/tree/raw) [![Build Status](https://secure.travis-ci.org/react4j/react4j-todomvc.png?branch=raw)](http://travis-ci.org/react4j/react4j-todomvc):
  Uses no library other than react4j.
* [arez](https://github.com/react4j/react4j-todomvc/tree/arez) [![Build Status](https://secure.travis-ci.org/react4j/react4j-todomvc.png?branch=arez)](http://travis-ci.org/react4j/react4j-todomvc):
  State is modelled using [Arez](https://arez.github.io). [raw...arez changes](https://github.com/react4j/react4j-todomvc/compare/raw...arez)
* [dagger](https://github.com/react4j/react4j-todomvc/tree/dagger) [![Build Status](https://secure.travis-ci.org/react4j/react4j-todomvc.png?branch=dagger)](http://travis-ci.org/react4j/react4j-todomvc):
  State is modelled using [Arez](https://arez.github.io), [Dagger2](https://google.github.io/dagger) is used
  for dependency injection. [arez...dagger changes](https://github.com/react4j/react4j-todomvc/compare/arez...dagger)

# Credit

* This project was extracted from the [react4j repository](https://github.com/react4j/react4j) which was originally
  derived from the repository [GWTReact/gwt-react-examples](https://github.com/GWTReact/gwt-react-examples) before
  being heavily modified. Credit goes to Paul Stockley and other contributors to the `gwt-react` projects who this
  repository was originally based on.
