# React4j Arez+Sting TodoMVC variant using Bazel

[![Build Status](https://api.travis-ci.com/react4j/react4j-todomvc.png?branch=sting_bazel)](http://travis-ci.com/react4j/react4j-todomvc)

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

* Fix error when unable to resolve to include dependency trace. i.e. We can get an trace like:

```
INFO: Build completed successfully, 1 total action
Downloading: https://repo.maven.apache.org/maven2/colt/colt/1.2.0/colt-1.2.0-sources.jar
Downloading: https://repo.maven.apache.org/maven2/tapestry/tapestry/4.0.2/tapestry-4.0.2-sources.jar
Unable to locate source for artifact 'colt:colt:jar:1.2.0'. Specify the 'includeSource' configuration property as 'false' in the artifacts configuration.
```

Where it is unclear why colt is included. Maybe emitting the dependency graph or at least the path to root dependency would give a better explanation.
