require_relative "word_guess"
describe WordGuess do
  let(:game) {WordGuess.new}

  it "can initialize instance variables" do
    expect(game.attempt_number).to eq 0
  end

  it "can update a letter to guessed word" do
    game.secret_word = ["u", "n", "i", "c", "o", "r", "n"]
    game.guessed_word =Array.new(game.secret_word.length, "_" )
    game.guessed_letter = "c"
    expect(game.update_guessed_word[3]).to eq  "c"
  end

  it "can create a place holder of underscore strings" do
    game.secret_word = ["u", "n", "i", "c", "o", "r", "n"]
    game.guessed_word =Array.new(game.secret_word.length, "_" )
    expect(game.guessed_word).to eq  ["_", "_", "_", "_", "_", "_", "_"]
  end

  it "can create a place holder of underscore strings" do
    game.secret_word = ["u", "n", "i", "c", "o", "r", "n"]
    game.guessed_letter = "c"
    expect(game.valid_letter?).to be true
  end

end
