require_relative '../lib/war_game'
require_relative '../lib/card_deck'

describe 'WarGame' do

	it 'creates players' do 
		game = WarGame.new
		expect(game.players.length).to eq 2
	end

	it 'has a deck' do 
		expect(WarGame.new.deck.count_cards).to eq(52)
	end


	describe '#deal_cards' do 
		let (:game) { WarGame.new}

		it 'gives both players 26 cards' do 


			expect { game.deal_cards }.to change { game.players[0].cards_count }.from(0).to(CardDeck.new.count_cards/2)
			expect(game.players[1].cards_count).to eq(CardDeck.new.count_cards/2) 
		end

	end


	describe '#start' do 

		let (:game) { WarGame.new}

		it 'plays a round' do 
			expect(game).to receive(:deal_cards)

			game.start
		end



		# it 'declares a winner once a player is out of cards' do 
		# end

	end

	describe '#play_round' do

		it 'it gives the cards to player 1 if player 1 wins' do 
           # Given 
           player1 = WarPlayer.new([PlayingCard.new('A', 'S')])
           player2 = WarPlayer.new([PlayingCard.new('3', 'S')])
           game = WarGame.new([player1, player2])

           # When 
           game.play_round

           # Then
           expect(player1.cards_count).to eq 2
           expect(player2.cards_count).to eq 0
       end

       it 'it gives the cards to player 2 if player 2 wins' do 
           # Given 
           player1 = WarPlayer.new([PlayingCard.new('3', 'S')])
           player2 = WarPlayer.new([PlayingCard.new('A', 'S')])
           game = WarGame.new([player1, player2])

           # When 
           game.play_round

           # Then
           expect(player1.cards_count).to eq 0
           expect(player2.cards_count).to eq 2
       end

       it "plays another round if it's a tie" do 
       	player1 = WarPlayer.new([PlayingCard.new('A', 'H'), PlayingCard.new('K', 'H')])
       	player2 = WarPlayer.new([PlayingCard.new('A', 'S'), PlayingCard.new('2', 'S')])
       	game = WarGame.new([player1, player2])

           # When 
           game.play_round

           # Then
           expect(player1.cards_count).to eq 4
           expect(player2.cards_count).to eq 0

       end
   end

   describe '#play_hand' do 

   	player1 = WarPlayer.new([PlayingCard.new('A', 'H'), PlayingCard.new('K', 'H')])
   	player2 = WarPlayer.new([PlayingCard.new('A', 'S'), PlayingCard.new('2', 'S')])
   	let (:game) {WarGame.new([player1, player2])}



   	it 'delivers all the cards to the winner' do 
   		game.play_hand([])
   		expect(game.player1.cards.count).to eq 4
   	end


   	describe '#tie' do 
   		player1 = WarPlayer.new([PlayingCard.new('A', 'H'))
   		player2 = WarPlayer.new([PlayingCard.new('A', 'S'))
        game = WarGame.new

        it "adds to holder" do 
        	game.tie(player1.cards, player2.cards, [])
        	expect(game.tie.holder).to eq([player1.cards, player2.cards])
        end


   	end




   	describe '#winner' do 

   		it "return false if both players have cards" do 
   			player1 = WarPlayer.new([PlayingCard.new('3', 'S')])
   			player2 = WarPlayer.new([PlayingCard.new('A', 'S')])
   			game = WarGame.new([player1, player2])
   			expect(game.winner).to eq(false)
   		end

   		it 'returns player1 if player2 has no cards' do 
   			player1 = WarPlayer.new([PlayingCard.new('3', 'S')])
   			player2 = WarPlayer.new
   			game = WarGame.new([player1, player2])
   			expect(game.winner).to eq(player1)

   		end
   		it 'returns player2 if player1 has no cards' do 
   			player1 = WarPlayer.new
   			player2 = WarPlayer.new([PlayingCard.new('A', 'S')])
   			game = WarGame.new([player1, player2])
   			expect(game.winner).to eq(player2)
   		end
   	end




   end


   describe '#mid_game_shuffle' do 

   	it "Is call in play_round" do 

   		game = WarGame.new

   		expect(game).to receive(:mid_game_shuffle)

   		game.start
   		game.play_round

   	end

   # 	 it "shuffles player1 cards"
   # 	  # given 
   # 	  game = WarGame.new
   # 	  # when
   # 	  	game.start
   # 	   4.times { game.play_round }

   # 	  # then 
   # 	     expect(game).to receive(:mid_game_shuffle).and_call_original
   # 	     original_cards = game.player1.cards
   # 	     expect(game.player1.cards.mid_game_shuffle).to_not eq(original_cards)
end


end
