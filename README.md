# React4j Arez+Sting TodoMVC variant using Bazel

[![Build Status](https://api.travis-ci.com/react4j/react4j-todomvc.png?branch=sting_bazel)](http://travis-ci.org/react4j/react4j-todomvc)

This [TodoMVC](http://todomvc.com/) implementation is written using:

* [Arez](https://arez.github.io) for local state management.
* [Sting](https://sting-ioc.github.io/) for dependency injection.
* [React4j](https://react4j.github.io) for the view layer.
* [Bazel](https://bazel.build/) as the build system.

## TODO

* add processing of `WORKSPACE` to zim for dependency upgrades

* add processing of `WORKSPACE` to arez/react4j/spritz for dependency upgrades during releases

* Add documentation and examples from

  https://github.com/tadeoj/nalu-bazel-example

* Introduce `gwt_dev_server` macro that wraps the rule and generates the required -deps artifact
  and update `gwt_application` to use macros.
