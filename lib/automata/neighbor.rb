module Automata
    class Neighbor

        ALL_POSSIBLE_NEIGHBORS = [[1,0], [1,-1], [0,-1], [-1,-1], [-1,0], [-1,1], [0,1], [1,1]]

        def self.all
            ALL_POSSIBLE_NEIGHBORS
        end

    end
end