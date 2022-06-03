require_relative '../lib/war_player'
require_relative '../lib/playing_card'
require_relative '../lib/card_deck'
describe 'WarPlayer' do
	let (:deck) { CardDeck.new.deck }
	let(:war_player) { WarPlayer.new(deck) }



	it "plays card" do 
		expect(deck.first).to equal(war_player.play_card)
	end

	it "determines if a player has cards" do 
		expect(war_player.cards_count).to eq 52  
		expect(war_player.cards_count).to eq(deck.count)
		expect(war_player.has_cards?).to eq true
	end

	it "determines if a player does not have cards" do 
		empty_deck = CardDeck.new([]).deck
		war_player1 = WarPlayer.new(empty_deck)

		expect(war_player1.cards_count).to eq 0 
		expect(war_player1.cards_count).to eq(empty_deck.count)
		expect(war_player1.has_cards?).to eq false
	end

	it "has a name" do 
		expect(war_player.name).to be_a_kind_of(String)
		expect(war_player.name.empty?).not_to eq true
	end

	it "initializes without a cards" do 
		deckless_player = WarPlayer.new
		expect(deckless_player.name).to be_a_kind_of(String)
		expect(deckless_player.name.empty?).not_to eq true
	end

	describe '#take_cards' do 

         new_war_player = WarPlayer.new

		it "can take a card" do 
			card = PlayingCard.new("3", "H")
			expect { new_war_player.take_cards(card) }.to change { new_war_player.cards_count }.by 1
		end

		it "can take multiple cards" do 
			cards = [PlayingCard.new("3", "H"), PlayingCard.new("4", "H")]
			expect { new_war_player.take_cards(*cards) }.to change { new_war_player.cards_count }.by 2
		end


	end

end
