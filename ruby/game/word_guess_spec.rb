require_relative "word_guess"
describe WordGuess do
  let(:game) {WordGuess.new}

  it "can initialize instance variables" do
    expect(game.attempt_number).to eq 0
  end

end
