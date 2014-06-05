require_relative 'deck'
require_relative 'card'


class Hand

  def initialize
    @tmpdeck=Deck.new
    @deck=@tmpdeck.return_deck
    @score=0
  end



  def deal_card
    @current_card=@deck.pop
  end

  def deal
    self.running_score @current_card
  end

  def score
    @score
  end

  def running_score(card)
    if card.facecard?
      @score += 10
    else
      if card.rank == 'A'
        @score += 1
      else
        @score += card.rank.to_i
      end
    end
  end

  def final_score
  end
end





