# frozen_string_literal: true

require 'automata/version'
require 'automata/game'
require 'automata/neighbor'
require 'automata/algorithm'
require 'automata/array_prettifier'

module Automata
  class << self
    class Error < StandardError; end

    def game(seed, generations)
      @game ||= Automata::Game.new
      @game.start(seed, generations)
    end
  end
end
