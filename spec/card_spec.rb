class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do # グループ化

  let(:card) {
    Card.new('Ace', 'Spades')
  }

  # def card
  #   Card.new('Ace', 'Spades')
  # end

  # # before do
  # before(:example) do
  #   @card = Card.new('Ace', 'Spades')
  # end

  it 'has a rank' do # example
    expect(card.rank).to eq('Ace')
    card.rank = "Queen"
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    card.suit = "nonsense"
    comparison = 'Spade'
    expect(card.suit).to eq(comparison), "hey, I expected #{comparison} but I got #{card.suit} instead!"
  end

end
