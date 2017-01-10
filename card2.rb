class Card
  attr_accessor :rank, :suite
    def initialize(rank,suite)
      @rank = rank
      @suite = suite
    end
    def dealt
      puts "the #{self.rank} of #{self.suite}"
    end
end

class Deck
  def initialize
    @rank = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
    @suite = ["Spades", "Hearts", "Diamonds", "Clubs"]
    @cards = []

    @rank.each do |rank|
      @suite.each do |suite|
    @cards << Card.new(rank,suite)
      end
    end
  end
  def shuffle
    @cards = @cards.shuffle!
  end
  def deal (number)
    number.times {@cards.shift.dealt}
  end
  def count
    @cards.count
  end
end

deck = Deck.new
deck.shuffle
deck.deal(7)

puts deck.count
