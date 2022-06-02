require_relative '../lib/war_game'

describe 'WarGame' do

	# it "has players" do
	# 	game = WarGame.new
	# 	expect(game.player1).to be_a_kind_of(WarPlayer)
	# 	expect(game.player2).to be_a_kind_of(WarPlayer)
	# end

	it "has a valid starting deck of cards" do 
		game = WarGame.new
		expect(game.deck).to be_a_kind_of(CardDeck) 
	end

	describe "deal_hands" do 
		let (:game) { WarGame.new}

		it "deals all cards" do 
			expect { game.deal_hands }.to change { game.deck.count_cards }.from(52).to(0)
		end

		it "deals the cards to two arrays" do 
			expect(game.hand1.count).to eq 26
		end

	end

	describe "start" do 
		let (:game) { WarGame.new}

		it "deals cards" do 
			expect(game).to receive(:deal_hands)

			game.start
		end
	end


	# it "deals all cards to two players" do 
	# 	expect(game.start)
	# end
end
