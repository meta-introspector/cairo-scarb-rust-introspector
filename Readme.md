# Idea

The idea behind this code is that we have a bit of rust like code that
can represent the asts of rust in the cairo zkp language.
We want to then compile this to run on another blockchain like mina.
It should be able to emit itself as a number.
So in the end we should be able to translate the code into a simple input that can be compiled.


# json

The test_scarb.sierra.json was generated from the source code.

`jq .  target/dev/test_scarb.sierra.json  >  test_scarb.sierra.json ` 
