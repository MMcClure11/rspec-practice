class Card 
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  #refactor, using the actual Class reference is better than the string because it adds some advanced RSpec helper methods 
  before do 
    @card = Card.new('Ace', 'Spades')
  end
  #this will be run once before each test
  
  it 'has a rank' do 
    expect(@card.rank).to eq('Ace')
  end

  it 'has a suit' do 
    expect(@card.suit).to eq('Spades')
  end
end