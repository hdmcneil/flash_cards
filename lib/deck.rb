class Deck
  attr_reader :cards
  def initialize(cards)
    @cards =[]
  end

  def add_card(card)
    @cards << card
  end

  def count
    @cards.count
  end

  def cards_category(category)
    @cards.select { |card| card.category == category }
  end

end
