require_relative '../lib/playing_card'

describe 'PlayingCard' do
	it "returns a valid rank" do 
		PlayingCard::RANKS.each do |rank|
			card = PlayingCard.new(rank, PlayingCard::SUITS.sample)
			expect(card.rank).to eq(rank)
		end
	end

		it "returns a valid suit" do 
		PlayingCard::SUITS.each do |suit|
			card = PlayingCard.new(PlayingCard::RANKS.sample, suit)
			expect(card.suit).to eq(suit)
		end
	end

	it "does not set an invalid rank" do 
		card = PlayingCard.new("hello", "world")
		expect(card.rank).to be_nil

	end

	it "has a value" do
		#given
		card = PlayingCard.new("A", "H")
		#Then
		expect(card.value).to eq(12)

	end


end
