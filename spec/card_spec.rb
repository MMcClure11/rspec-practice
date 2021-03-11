class Card 
  attr_reader :type 

  def initialize(type)
    @type = type
  end
end

RSpec.describe Card do
  #refactor, using the actual Class reference is better than the string because it adds some advanced RSpec helper methods 
  it 'has a rank' do 
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do 
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end
end