
class Card

  def initialize(rank,suit)
    @rank=rank
    @suit=suit
  end

  def facecard?
    ['J', 'Q', 'K',].include?(@rank)
  end

  def rank
    @rank
  end

  def suit
    @suit
  end

end




























