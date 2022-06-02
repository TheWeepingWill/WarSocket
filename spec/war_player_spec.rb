require_relative '../lib/war_player'

describe 'WarPlayer' do
	it "plays card" do 
		deck = CardDeck.new.deck
		war_player = WarPlayer.new(deck)
		expect(deck.first).to equal(war_player.play_card)
	end


	it "determines if a player has cards" do 

		deck = CardDeck.new.deck
		deck2 = CardDeck.new([]).deck
		war_player = WarPlayer.new(deck)
		expect(war_player.hand_count).to eq 52  
		expect(war_player.hand_count).to eq(deck.count)
		expect(war_player.has_cards?).to eq true
	end
end
