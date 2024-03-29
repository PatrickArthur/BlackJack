require_relative 'card'

SUITS  = ['♦', '♥', '♠', '♣']
VALS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

class Deck

  def initialize
    @collection =[]
    SUITS.each do |suit|
      VALS.each do |value|
        @collection << Card.new(value,suit)
      end
    end
    @collection.shuffle!
  end

  def return_deck
    @collection
  end
end



