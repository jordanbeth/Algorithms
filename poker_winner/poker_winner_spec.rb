require_relative 'poker_winner'

describe ".card_converter" do
  it "return the hand of cards represented as integers" do
    cards = ["QD", "JD", "TD", "AD", "KD"]
    expect(card_converter(cards)).to eq [12, 11, 10, 14, 13]
    cards = ["JS", "TC", "QH", "2H", "4C"]
    expect(card_converter(cards)).to eq [11, 10, 12, 2, 4]
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
    cards = ["QD", "JD", "TD", "AD", "KD"]
    converted_cards = [12, 11, 10, 14, 13]
    expect(straight_flush(cards, converted_cards)).to be true
  end

  it "return FALSE when the hand is not a straight flush" do

  end
end

describe ".royal_flush" do
