# Automata

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Automata is an implementation of the Game Of Life algorithm.

### Installation



```sh
$ git clone git@github.com:azuaraj/automata.git
$ cd automata
$ bundle install
$ cd examples
$ ruby example.rb
```

For irb usage...

```sh
$ cd automata
$ bundle console
$ seed = [[0, 1, 0], [0, 0, 1], [1, 1, 1], [0, 0, 0]] 
$ Automata.game(seed, 6)
```
