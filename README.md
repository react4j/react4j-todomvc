# React4j TodoMVC variant using Bazel and J2CL

[![Build Status](https://api.travis-ci.com/react4j/react4j-todomvc.png?branch=raw_bazel_j2cl)](http://travis-ci.org/react4j/react4j-todomvc)

This [TodoMVC](http://todomvc.com/) implementation is written using:

* [React4j](https://react4j.github.io) for the view layer.
* [Bazel](https://bazel.build/) as the build system.
* [J2CL](https://githum.com/google/j2cl) as the Java-to-Javascript compiler.

## TODO

Things that need to be done in prelude to get it working

- Why is javascript within libraries not being picked up? Should be able to do this so can delete local copies.
- Need to get somehow get closure externs associated with Elemental2 packaged and used by closure compiler?
- Need to update BrainCheck and Arez to move debugger calls to using standard call?
