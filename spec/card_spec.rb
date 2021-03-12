class Card 
  attr_reader :rank, :suit
  attr_writer :rank

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  #refactor, using the actual Class reference is better than the string because it adds some advanced RSpec helper methods 
  # before do 
  #   @card = Card.new('Ace', 'Spades')
  # end
  #before hook - this will be run once before each test
  #note instance variables are often not preferred because if an instance variable is undefined, you won't get an error it will evaluate to nil which can bake it more difficult to debug
  def card 
    Card.new('Ace', 'Spades')
  end

  it 'has a rank and that rank can change' do 
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen' #this does not work because of mutation, every time the card is referenced it is making a new instance of the card
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do 
    expect(card.suit).to eq('Spades')
  end
end