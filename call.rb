require_relative 'hand'

@dealer_hand=Hand.new

@player_hand=Hand.new




player_hand=[]
dealer_hand=[]


for i in 1..2 do
    dealer_hand<< @dealer_hand.deal_card
    @dealer_hand.deal
    player_hand<< @player_hand.deal_card
    @player_hand.deal
end

player_hand.each do |x|
  puts "Player was dealt: #{x.rank} #{x.suit}"
end
player_score=@player_hand.score
puts "The players score is:#{player_score}"

dealer_score=@dealer_hand.score

puts ""

puts "Would you like to hit or stand?"
next_step = gets.chomp


while next_step == 'hit' and player_score<21
  player_hand2=@player_hand.deal_card
  @player_hand.deal
  puts "Player was dealt #{player_hand2.rank} #{player_hand2.suit}"
  player_score=@player_hand.score
  puts "The players score is:#{player_score}"

  if player_score == 21
   puts "Player Wins"
   break
 end

  if player_score>21
    puts "player bust"
    break
  end

  puts "Would you like to hit or stand?"
  next_step = gets.chomp

end


while next_step == 'stand' and dealer_score<=17

  dealer_hand.each do |x|
    puts "Dealer was dealt: #{x.rank} #{x.suit}"
  end

  puts "The Dealers score is:#{dealer_score}"

  puts ""


  dealer_hand2=@dealer_hand.deal_card
  @dealer_hand.deal
  puts "Dealer was dealt #{dealer_hand2.rank} #{dealer_hand2.suit}"

  dealer_score=@dealer_hand.score
  puts "The Dealers score is:#{dealer_score}"

  if dealer_score<17
    puts "Dealer stand"

    puts ""

    puts "Would you like to hit or stand?"
    next_step = gets.chomp

    while next_step == 'hit' and player_score<21
      player_hand2=@player_hand.deal_card
      @player_hand.deal
      puts "Player was dealt #{player_hand2.rank} #{player_hand2.suit}"
      player_score=@player_hand.score
      puts "The players score is:#{player_score}"

      if player_score == 21
        puts "Player Wins"
        break
      end

      if player_score>21
        puts "player bust"
        break
      end
      puts "Would you like to hit or stand?"
      next_step = gets.chomp
    end
  end

  if dealer_score>21
    puts "Dealer bust"
    break
  end

  if dealer_score>17 and dealer_score<21
    if dealer_score>player_score
      puts "Dealer Wins"
    else
      if dealer_score<player_score
      puts "Player Wins"
      break
      end
    end
  end

  if dealer_score==player_score
    puts "Ties"
    break
  end

end





