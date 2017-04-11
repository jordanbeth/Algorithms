require_relative 'poker_winner'

describe ".poker_winner" do

  context "a player wins with a royal flush" do
    it "returns 1 because player 1 had the royal flush and 2 did not" do
      player1 = ["QD", "JD", "TD", "AD", "KD"]
      player2 = ["JS", "TC", "QH", "2H", "4C"]
      expect(poker_winner(player1, player2)).to eq "player 1 wins"
    end

    it "returns 1 because player 1 had the royal flush and 1 did not" do
      player2 = ["QD", "JD", "TD", "AD", "KD"]
      player1 = ["JS", "JC", "JH", "2H", "2C"]
      expect(poker_winner(player1, player2)).to eq "player 2 wins"
    end
  end

  context "a player wins with a straight flush" do
    it "player 1 has the straight flush and 2 did not" do
      player1 = ["6D", "4D", "7D", "5D", "3D"]
      player2 = ["JS", "2C", "QH", "2H", "4C"]
      expect(poker_winner(player1, player2)).to eq "player 1 wins"
    end

    it "player 2 has the straight flush and 1 did not" do
      player2 = ["QD", "JD", "TD", "AD", "KD"]
      player1 = ["JS", "JC", "JH", "2H", "2C"]
      expect(poker_winner(player1, player2)).to eq "player 2 wins"
    end
  end

  context "a player wins with four of a kind" do
    it "player 1 has the four of a kind and 2 did not" do
      player1 = ["4D", "4C", "4S", "5D", "4H"]
      player2 = ["JS", "2C", "QH", "2H", "4C"]
      expect(poker_winner(player1, player2)).to eq "player 1 wins"
    end

    it "player 2 had the four of a kind and 1 did not" do
      player2 = ["4D", "4C", "4S", "5D", "4H"]
      player1 = ["JS", "2C", "QH", "2H", "4C"]
      expect(poker_winner(player1, player2)).to eq "player 2 wins"
    end
  end



end

describe ".card_converter" do
  it "return the hand of cards represented as integers" do
    cards = ["QD", "JD", "TD", "AD", "KD"]
    expect(card_converter(cards)).to eq [12, 11, 10, 14, 13]
    cards = ["JS", "TC", "QH", "2H", "4C"]
    expect(card_converter(cards)).to eq [11, 10, 12, 2, 4]
  end
end

describe ".high_card" do
  it "returns the highest card (8) in the hand" do
    cards = [2, 6, 7, 4, 8]
    expect(high_card(cards)).to be 8
  end

  it "returns the highest card (14) in the hand" do
    cards = [14, 3, 10, 11, 5]
    expect(high_card(cards)).to be 14
  end
end

describe ".one_pair" do
  it "returns TRUE when there is one pair" do
    cards = [4, 3, 9, 4, 14]
    expect(one_pair(cards)).to be true
  end

  it "returns FALSE when there is NOT one pair" do
    cards = [4, 3, 9, 6, 14]
    expect(one_pair(cards)).to be false
  end
end

describe ".two_pair" do
  it "returns TRUE when there are two pair" do
    cards = [2, 2, 12, 7, 12]
    expect(two_pair(cards)).to be true
  end

  it "returns FALSE when there are NOT two pair" do
    cards = [2, 5, 11, 7, 2]
    expect(two_pair(cards)).to be false
  end
end

describe ".three_of_a_kind" do
  it "returns TRUE when there is three of a kind" do
    cards = [5, 5, 6, 7, 5]
    expect(three_of_a_kind(cards)).to be true
  end

  it "returns FALSE when there is NOT three of a kind" do
      cards = [5, 5, 6, 7, 9]
    expect(three_of_a_kind(cards)).to be false
  end
end

describe ".flush" do
  it "returns TRUE if the cards are all of the same suit" do
    cards = ["QD", "JD", "TD", "AD", "KD"]
    expect(flush(cards)).to be true
  end

  it "return FALSE if the cards are NOT all of the same suit" do
    cards = ["JS", "TC", "QH", "2H", "4C"]
    expect(flush(cards)).to be false
  end
end

describe ".straight" do
  it "return TRUE when the cards make a straight" do
    cards = [12, 11, 10, 14, 13]
    expect(straight(cards)).to eq true
  end

  it "returns FALSE when the cards do NOT make a straight" do
    cards = [2, 5, 11, 7, 3]
    expect(straight(cards)).to eq false
  end
end

describe ".full_house" do
  it "return TRUE when the cards make a full house" do
    cards = [5, 5, 5, 12, 12]
    expect(full_house(cards)).to be true
  end

  it "returns FALSE when the cards do NOT make a full house" do
    cards = [5, 5, 6, 12, 12]
    expect(full_house(cards)).to be false
  end
end

describe ".four_of_a_kind" do
  it "returns TRUE when there is four of a kind" do
    cards = [5, 14, 14, 14, 14]
    expect(four_of_a_kind(cards)).to be true
  end

  it "returns FALSE when there is NOT four of a kind" do
    cards = [5, 14, 13, 14, 14]
    expect(four_of_a_kind(cards)).to be false
  end
end

describe ".straight_flush" do
  it "returns TRUE when the hand is a straight flush" do
    cards = ["6D", "7D", "8D", "5D", "9D"]
    converted_cards = [6, 7, 8, 5, 9]
    expect(straight_flush(cards, converted_cards)).to be true
  end

  it "returns FALSE when the hand is NOT a straight flush" do
    cards = ["6D", "7S", "8D", "5D", "9D"]
    converted_cards = [6, 7, 8, 5, 9]
    expect(straight_flush(cards, converted_cards)).to be false
  end
end

describe ".royal_flush" do
  it "returns TRUE when the hand is a royal flush" do
    cards = ["QD", "JD", "TD", "AD", "KD"]
    converted_cards = [12, 11, 10, 14, 13]
    expect(royal_flush(cards, converted_cards)).to be true
  end

  it "returns FALSE when the hand in NOT a royal flush" do
    cards = ["QH", "JD", "TD", "AD", "KD"]
    converted_cards = [12, 11, 10, 14, 13]
    expect(royal_flush(cards, converted_cards)).to be false
  end
end
