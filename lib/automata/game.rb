module Automata
    class Game

        attr_accessor :seed
        attr_accessor :generations
        attr_accessor :current_arrangement_state

        def initialize(seed, generations)
            @seed = seed
            @generations = generations
            @current_arrangement_state = []
        end

        def start
        end

        def stop
        end 


    end
end