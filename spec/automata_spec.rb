# frozen_string_literal: true

RSpec.describe Automata do
  it 'has a version number' do
    expect(Automata::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(false)
  end

  describe 'Test correct algorithm results' do

    input = [[0, 1, 0], [0, 0, 1], [1, 1, 1], [0, 0, 0]] # Initial seed state

    it 'returns correct simulation array (1 generation)' do
      output = [[0, 0, 0], [1, 0, 1], [0, 1, 1], [0, 1, 0]] # expected output after 1 generation
      algo = Automata::Algorithm.new(input, 1)
      algo.run
      expect(algo.current_arrangement_state).to eq(output)
    end
  
    it 'returns correct simulation array (6 generations)' do
      output = [[0, 0, 0], [0, 0, 0], [0, 1, 1], [0, 1, 1]] # expected output after 6 generations
      algo = Automata::Algorithm.new(input, 6)
      algo.run
      expect(algo.current_arrangement_state).to eq(output)
    end
  end

end
