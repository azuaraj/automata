# frozen_string_literal: true

module Automata
  class Algorithm
    attr_accessor :seed, :generations, :current_arrangement_state, :iteration_number

    def initialize(seed, generations)
      @seed = seed
      @generations = generations
      @current_arrangement_state = nil
      @iteration_number = 0
    end

    def run
      generations.times do
        @iteration_number.zero? ? @current_arrangement_state = @seed : @current_arrangement_state

        rows = @seed.size
        cols = @seed[0].size

        (0...rows).each do |row|
          (0...cols).each do |col|
            live_neighbors = 0
            Automata::Neighbor.all.each do |neighbor|
              r = (row + neighbor[0])
              c = (col + neighbor[1])

              if (r < rows && r >= 0) && (c < cols && c >= 0) && ((@current_arrangement_state[r][c]).abs == 1)
                live_neighbors += 1
              end
            end

            if @current_arrangement_state[row][col] == 1 && ((live_neighbors < 2) || (live_neighbors > 3))
              @current_arrangement_state[row][col] = -1
            end

            if (@current_arrangement_state[row][col]).zero? && live_neighbors == 3
              @current_arrangement_state[row][col] = 2
            end
          end
        end

        puts "Gen #{@iteration_number + 1}"
        transform_current_state_to_final_representation(rows, cols)
        @iteration_number += 1
      end
    end

    private

    def transform_current_state_to_final_representation(rows, cols)
      (0...rows).each do |row|
        (0...cols).each do |col|
          @current_arrangement_state[row][col] = if (@current_arrangement_state[row][col]).positive?
                                                   1
                                                 else
                                                   0
                                                 end
        end
      end

      Automata::ArrayPrettifier.transform(@current_arrangement_state)
    end
  end
end
