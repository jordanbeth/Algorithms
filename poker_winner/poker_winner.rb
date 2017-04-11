=begin
Problem Poker Winner
- Given two hands of cards, determine which player is winning in a game of poker.

- Assume that the game is played using high rules (meaning that an Ace can rank either high or low, but cannot rank both high and low in the same hand).

 Example

player1 = ["QD", "JD", "TD", "AD", "KD"]
player2 = ["JS", "TC", "QH", "2H", "4C"]
pokerWinner(player1, player2) = 1
=end

def poker_winner(player1, player2)
  # call flush first to see
  # store converted_cards separately from cards

  # then call card_converter to convert the cards to numbers

end

def card_converter(cards)
  cards.map! do |card|
    case card[0]
      when "T"
        card = 10
      when "J"
        card = 11
      when "Q"
        card = 12
      when "K"
        card = 13
      when "A"
        card = 14
      else
        card = card[0].to_i
    end
  end
end

def straight(converted_cards)
  converted_cards.sort!
  i = 0
  while (i < (converted_cards.length - 1))
    if (converted_cards[i] + 1) != (converted_cards[i + 1]) then return false end
    i += 1
  end
 true
end

def flush(cards)
  cards.each { |card| if cards[0][1] != card[1] then return false end }
  true
end

def full_house(converted_cards)
  converted_cards.uniq.length == 2
end

def four_of_a_kind(converted_cards)
  converted_cards.each do |card|
    return true if converted_cards.count(card) == 4
  end
  false
end

def straight_flush(cards, converted_cards)
  flush(cards) && straight(converted_cards)
end

def royal_flush(cards, converted_cards)
  straight_flush(cards, converted_cards) && (converted_cards.sort == [10, 11, 12, 13, 14])
end 
