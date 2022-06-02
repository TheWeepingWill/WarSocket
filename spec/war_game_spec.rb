require_relative '../lib/war_game'

describe 'WarGame' do
	it "has a deck of cards" do 
		WarGame::DECK.each do |i|
			expect(i).to be_a_kind_of(PlayingCard)
		end
	end
	it "has players" do
		game = WarGame.new
		expect(game.player1).to be_a_kind_of(WarPlayer)
		expect(game.player2).to be_a_kind_of(WarPlayer)
	end

	describe "start" do 
		it "starts the game" do 
			game = WarGame.new
			expect(game.start).to receive(:play_round)
		end
	end
end
