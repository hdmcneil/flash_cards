require './lib/card'
require './lib/deck'
require 'pry'

RSpec.describe Deck do
  it 'has card' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
   
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    expect(card_1).to be_instance_of(Card)
    expect(card_2).to be_instance_of(Card)
    expect(card_3).to be_instance_of(Card)
  end

  it 'has cards in array' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
   
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck1 = Deck.new([])

    deck1.add_card(card_1)
    deck1.add_card(card_2)
    deck1.add_card(card_3)

    expect(deck1.cards).to eq ([card_1, card_2, card_3])
  end

  it 'has the deck' do
    deck1 = Deck.new([])
    expect(deck1).to be_instance_of(Deck)
  end

  it 'has cards in deck' do
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
   
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

  deck1 = Deck.new([])

  deck1.add_card(card_1)
  deck1.add_card(card_2)
  deck1.add_card(card_3)

  expect(deck1.cards).to eq([card_1, card_2, card_3])
  end

  it 'has 3 cards in deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
   
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    deck1 = Deck.new([])
  
    deck1.add_card(card_1)
    deck1.add_card(card_2)
    deck1.add_card(card_3)

    deck1.count

    expect(deck1.count).to eq(3)
  end

  it 'returns cards from :STEM category' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
   
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    deck1 = Deck.new([])
  
    deck1.add_card(card_1)
    deck1.add_card(card_2)
    deck1.add_card(card_3)

    deck1.cards_category(:STEM)

    expect(deck1.cards_category(:STEM)).to eq([card_2, card_3])
  end

  it 'returns cards from :Geography category' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
   
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    deck1 = Deck.new([])
  
    deck1.add_card(card_1)
    deck1.add_card(card_2)
    deck1.add_card(card_3)

    deck1.cards_category(:Geography)

    expect(deck1.cards_category(:Geography)).to eq([card_1])
  end
   
  it 'returns cards from "Pop Culture" category' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
   
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    deck1 = Deck.new([])
  
    deck1.add_card(card_1)
    deck1.add_card(card_2)
    deck1.add_card(card_3)

    deck1.cards_category("Pop Culture")

    expect(deck1.cards_category("Pop Culture")).to eq([])
  end
end
 