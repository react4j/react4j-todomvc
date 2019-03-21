# React4j TodoMVC variant using Bazel

[![Build Status](https://secure.travis-ci.org/react4j/react4j-todomvc.png?branch=raw_bazel)](http://travis-ci.org/react4j/react4j-todomvc)

This [TodoMVC](http://todomvc.com/) implementation is written using:

* [React4j](https://react4j.github.io) for the view layer.
* [Bazel](https://bazel.build/) as the build system.

## Notes

The dependencies are generated by using the command:

    .../bazel-deps/gen_maven_deps.sh generate --repo-root `pwd` --sha-file 3rdparty/workspace.bzl --deps dependencies.yaml  --buildifier /usr/local/bin/buildifier
