# React4j TodoMVC variant using Bazel

[![Build Status](https://secure.travis-ci.org/react4j/react4j-todomvc.png?branch=raw_bazel)](http://travis-ci.org/react4j/react4j-todomvc)

This [TodoMVC](http://todomvc.com/) implementation is written using:

* [React4j](https://react4j.github.io) for the view layer.
* [Bazel](https://bazel.build/) as the build system.

## TODO

* add processing of `WORKSPACE` to zim for dependency upgrades

* add processing of `WORKSPACE` to arez/react4j/spritz for dependency upgrades during releases

* Add documentation and examples from

  https://github.com/tadeoj/nalu-bazel-example

* Introduce `gwt_dev_server` macro that wraps the rule and generates the required -deps artifact
  and update `gwt_application` to use macros.
