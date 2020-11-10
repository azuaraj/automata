require 'bundler/setup'
require 'automata'

#1. Declare multidimensional array, each array within the main array represents a row, the elements within individual arrays represent columns

seed = [[0, 1, 0], [0, 0, 1], [1, 1, 1], [0, 0, 0]] 

#2. Run the simulation, pass the seed array and declare how many generations will be simulated

Automata.game(input, 6)

