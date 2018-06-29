# How to build

First you need to install updated build tools that does not copy the `*/public/` assets into
the directory used by j2cl compile. To install build tools locally do:

    > git clone https://github.com/realityforge/j2cl.git
    > cd j2cl
    > git checkout NoCopyPublicAssets
    > mvn clean install

## BUNDLE Mode

To compile in bundle mode simply open up the `pom.xml` and change `--compilation_level=ADVANCED` to
`--compilation_level=BUNDLE` and then run `./build.sh`.

## ADVANCED Mode

The `ADVANCED` mode currently does not work as the process is not using the externs for some reason.
The externs are located at `src/main/externs/react.externs.js` and are configured in the `pom.xml`.
However running `./build.sh` results in `ERROR - Required namespace "React.Component" never defined.`
errors. It is probable that the externs are not exactly aligned with the java code but it is until
they are accepted by closure compiler it is difficult to track down the specific problem.

# Future TODO

* Consider compiling react with closure-compiler
  - https://github.com/facebook/react/pull/11967/files
  - https://github.com/tadeegan/react-closure-sample
* Experiment with Bazel - https://github.com/bazelbuild/rules_closure
* https://github.com/Axellience/vue-gwt-demo/blob/feature/j2cl/pom.xml
