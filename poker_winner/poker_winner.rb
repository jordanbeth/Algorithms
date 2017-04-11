# Implemented the algorithms to determine winner of a game of 5 card poker
require 'pry'

def card_converter(cards)
  cards.map do |card|
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

def high_card(converted_cards)
  converted_cards.max
end

def one_pair(converted_cards)
  converted_cards.each { |card| return true if converted_cards.count(card) == 2 }

  false
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
  while (i < (converted_cards.size - 1))
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

def poker_winner(player1, player2)
  # keep cards as strings and numbers
  # store converted_cards separately from cards
  cards1 = player1
  converted_cards1 = card_converter(player1);
  cards2 = player2
  converted_cards2 = card_converter(player2);

  # royal-flush booleans
  royal_f1 = royal_flush(cards1, converted_cards1); royal_f2 = royal_flush(cards2, converted_cards2);

  if (royal_f1 && !royal_f2) then return "player 1 wins" end
  if (!royal_f1 && royal_f2) then return "player 2 wins" end

  # straight-flush booleans
  straight_f1 = straight_flush(cards1, converted_cards1);
  straight_f2 = straight_flush(cards2, converted_cards2);

  if (straight_f1 && !straight_f2) then return "player 1 wins" end
  if (!straight_f1 && straight_f2) then return "player 2 wins" end

  # four-of-a-kind booleans
  four_of_a_kind1 = four_of_a_kind(cards1);
  four_of_a_kind2 = four_of_a_kind(cards2);

  # full-house booleans
  full_h1 = full_house(cards1);
  full_h2 = full_house(cards2);
  # straight booleans
  straight1 = straight(cards1);
  straight2 = straight(cards2);
  # flush booleans
  flush1 =  flush(cards1);
  flush2 = flush(cards2);
  # three-of-a-kind booleans
  three_of_a_kind1 = three_of_a_kind(cards1);
  three_of_a_kind2 = three_of_a_kind(cards2);
  # two-pair booleans
  two_pair1 = two_pair(cards1);
  two_pair2 = two_pair(cards2);
  # one-pair booleans
  one_pair1 = one_pair(cards1);
  one_pair2 = one_pair(cards2);
  # high-card booleans
  high_card1 = high_card(cards1);
  high_card2 = high_card(cards2);

  # binding.pry
  # then call card_converter to convert the cards to numbers

end
