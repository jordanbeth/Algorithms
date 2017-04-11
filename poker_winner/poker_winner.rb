# Implemented the algorithms to determine winner of a game of 5 card poker

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

def two_pair(converted_cards)
  pair_cards = []
  converted_cards.each do |card|
    if converted_cards.count(card) == 2
      pair_cards << card
    end
  end
  
  pair_cards.size == 4 ? true : false
end

def three_of_a_kind(converted_cards)
  converted_cards.each do |card|
    return true if converted_cards.count(card) == 3
  end

  false
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
