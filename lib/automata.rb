require "automata/version"
require "automata/game"

module Automata
  class << self
    class Error < StandardError; end

    def game(seed, generations)
      @game ||= Automata::Game.new seed, generations
    end

  end
end
