require_relative '../lib/war_player'

describe 'WarPlayer' do
	it "plays card" do 
		deck = CardDeck.new.deck
		war_player = WarPlayer.new
		expect(deck.first).to equal(war_player.play_card(deck))
	end


	it "determines if a player has cards" do 
		deck = CardDeck.new.deck
		war_player = WarPlayer.new

		expect(war_player.hand_count(deck)).to eq 52  
		expect(war_player.hand_count(deck)).to eq(deck.count)
	end

	it "determines if a player does not have cards" do 
		deck = CardDeck.new([]).deck
		war_player = WarPlayer.new

		expect(war_player.hand_count(deck)).to eq 0 
		expect(war_player.hand_count(deck)).to eq(deck.count)
	end
end
