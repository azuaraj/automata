module Automata
    class Game

        attr_accessor :seed
        attr_accessor :generations
        attr_accessor :current_arrangement_state

        def initialize(seed, generations)
            @seed = seed
            @generations = generations
            @current_arrangement_state = nil
        end

        def start
          #  @current_arrangement_state = [[0,0,0],[1,0,1],[0,1,1],[0,1,0]]
          @current_arrangement_state = @seed
          neighbors =  [[1,0], [1,-1], [0,-1], [-1,-1], [-1,0], [-1,1], [0,1], [1,1]]

          rows = @seed.size
          cols = @seed[0].size

          (0...rows).each do |row|
              (0...cols).each do |col|
                live_neighbors = 0
                neighbors.each do |neighbor| 
                    r = (row + neighbor[0])
                    c = (col + neighbor[1])

                    if (r < rows && r >= 0) && (c < cols && c >= 0) && ((@seed[r][c]).abs == 1)
                        live_neighbors += 1
                    end
                end

                if @seed[row][col] == 1 && (live_neighbors < 2 or live_neighbors > 3)
                    @current_arrangement_state[row][col] = -1
                end

                if @seed[row][col] == 0 && live_neighbors == 3
                    @current_arrangement_state[row][col] = 2
                end
              end
          end

          (0...rows).each do |row|
            (0...cols).each do |col|
                if @current_arrangement_state[row][col] > 0
                    @current_arrangement_state[row][col] = 1
                else
                    @current_arrangement_state[row][col] = 0
                end
            end
          end

        end

        def stop
        end 


    end
end