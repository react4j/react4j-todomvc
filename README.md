# React4j TodoMVC variant using Maven

[![Build Status](https://secure.travis-ci.org/react4j/react4j-todomvc.png?branch=raw_maven)](http://travis-ci.org/react4j/react4j-todomvc)

This [TodoMVC](http://todomvc.com/) implementation is written using:

* [React4j](https://react4j.github.io) for the view layer.
* [Maven](https://maven.apache.org) as the build system.

You can build a production version of the example via `mvn clean package` which will produce a war file
named `target/react4j-todomvc-1.0.0-SNAPSHOT.war` that you can deploy in any servlet container. You can also
run the application locally using GWTs "devmode" via `mvn -Pdev clean gwt:devmode`. It should be noted that
the devmode version of the application enables invariant checking in every library and thus will have a
significant performance degradation compared to production mode.
