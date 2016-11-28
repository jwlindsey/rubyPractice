class Card
  attr_accessor :rank, :suit

  def initialize (rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "the #{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end

end

class Deck
  attr_reader :cards
  def initialize
    ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
    suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
    @cards = ranks.product(suits)
  end

  def shuffle
    @cards = ranks.product(suits).shuffle!
  end

  def deal
    @cards = ranks.product(suits).shift
  end
end

cards = Deck.new
puts cards.deal
