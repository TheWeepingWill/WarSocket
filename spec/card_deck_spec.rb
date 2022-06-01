require_relative '../lib/card_deck'

describe 'CardDeck' do
  it "initializes with a single card"do 
  expect(CardDeck.new(PlayingCard)).not_to be_nil
end

it "Counts the cards" do 
 deck1 = CardDeck.new([PlayingCard])
 deck2 = CardDeck.new([PlayingCard, PlayingCard])
 expect(deck1.cards_left).to eq 1
 expect(deck2.cards_left).to eq 2
end

describe "create deck" do 

  it 'Should have 52 cards when new deck is created' do
    deck = CardDeck.new()
    expect(deck.cards_left).to eq 52
  end

  it "first card should be an ace of hearts" do 
    deck = CardDeck.new()
    expect(deck.create_deck.shift).to eq(PlayingCard.new("A", "H"))
  end

end


describe "deal" do 
  it 'should deal the top card' do

    deck = CardDeck.new
    card = deck.deal

    expect(card).to_not be_nil
    expect(deck.cards_left).to eq 51
    expect(card).to be_a_kind_of(PlayingCard) 
    expect(deck.deck.include?(card)).to eq(false)
  end
end

describe "shuffle" do 
  it "should be shuffled" do 
    deck1 = CardDeck.new
    expect(deck1.shuffle).not_to equal(deck1)

  end
end



end
