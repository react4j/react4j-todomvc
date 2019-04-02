# React4j TodoMVC variant using Bazel

[![Build Status](https://secure.travis-ci.org/react4j/react4j-todomvc.png?branch=raw_bazel)](http://travis-ci.org/react4j/react4j-todomvc)

This [TodoMVC](http://todomvc.com/) implementation is written using:

* [React4j](https://react4j.github.io) for the view layer.
* [Bazel](https://bazel.build/) as the build system.

## TODO

* add processing of `WORKSPACE` to zim for dependency upgrades

* add processing of `WORKSPACE` to arez/react4j/spritz for dependency upgrades during releases

* Make it possible to disable GWT dev mode for a gwt application and just do gwt compile

* Consider helping maintain https://github.com/bazelbuild/rules_gwt

* Add documentation and examples from

  https://github.com/tadeoj/nalu-bazel-example

* Move to https://blog.bazel.build/2019/03/31/rules-jvm-external-maven.html
  - consider auto-scanning deps for annotation processors and adding required declarations
  - consider supporting `omit_*`
  - consider adding support for `java_library`, `j2cl_library`, `j2cl_import` etc.
