class Card
  attr_accessor :rank, :suit

  def initialize (rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "the #{self.rank} of #{self.suit}"
  end
end

class Deck
  def initialize
    @ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
    @suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
    @cards = []

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
    def shuffle
      @cards = @cards.shuffle!
    end

    def deal (number)
      number.times {@cards.shift.output_card}
    end
end

deck = Deck.new
deck.deal(7)
