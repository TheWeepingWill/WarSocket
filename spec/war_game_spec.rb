require_relative '../lib/war_game'

describe 'WarGame' do
    
    it "creates players" do 
    	expect(WarGame.new.players).not_to be_nil
    end

    it "has a deck" do 
    	expect(WarGame.new.deck.count_cards).to eq(52)
    end
end
