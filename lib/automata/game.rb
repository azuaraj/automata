# frozen_string_literal: true

module Automata
  class Game
    attr_accessor :state

    def initialize
      @state = 'Inactive'
    end

    def start(seed, generations)
      @state = 'Running'
      Automata::Algorithm.new(seed, generations).run
      @state = 'Finished'
    end
  end
end
