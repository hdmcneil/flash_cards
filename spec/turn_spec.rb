require './lib/turn'
require './lib/card'
require 'pry'

RSpec.describe Turn do
  it 'has a card' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(card).to be_instance_of(Card)
  end

  it 'has a turn' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn).to be_instance_of(Turn)
  end

  it 'returns the card' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    turn.card
    expect(turn.card).to eq(card)
  end

  it 'returns the guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    turn.guess
    expect(turn.guess).to eq("Juneau")
  end

  it 'is correct' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
     expect(turn.correct?).to be(true)
  end

  it 'gives feedback' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn.feedback).to eq("Correct!")
  end

  it 'has a card' do
    card = Card.new("which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)
    expect(card).to be_instance_of(Card)
  end

  it 'has a turn' do
    card = Card.new("which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)
    expect(turn).to be_instance_of(Turn)
  end

  it 'returns the card' do
    card = Card.new("which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)
    expect(turn.card).to eq(card)
  end 

  it 'returns the guess' do
    card = Card.new("which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)
    expect(turn.guess).to eq("Saturn")
  end

  it 'is correct' do 
    card = Card.new("which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)
    expect(turn.correct?).to be(false)
  end

  it 'gives feedback' do
    card = Card.new("which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)
    expect(turn.feedback).to eq("Incorrect.")
  end
end

