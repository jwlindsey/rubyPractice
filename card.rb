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
  def initialize
    ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
    suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
    @deck = ranks.product(suits)
  end
  def shuffle
    @deck = ranks.product(suits).shuffle!
  end
end


puts deck
