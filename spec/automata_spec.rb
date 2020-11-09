RSpec.describe Automata do
  it "has a version number" do
    expect(Automata::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  it "returns correct simulation array" do
    input = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]] #Initial seed state
    output = [[0,0,0],[1,0,1],[0,1,1],[0,1,0]] #expected output after 1 generation
    game = Automata.game(input, 1)
    game.start
    expect(game.current_arrangement_state).to eq(input)
  end
end
