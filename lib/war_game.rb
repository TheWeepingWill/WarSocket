 require_relative 'card_deck'

 class WarGame 
 	DECK = CardDeck.new.shuffle

 	def player1 
 		WarPlayer.new(DECK)
 	end
 	def player2 
 		WarPlayer.new(DECK)
 	end
 end
