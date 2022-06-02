 require_relative 'card_deck'

 class WarGame 

 	def start
 	end

 	def player1 
 		WarPlayer.new(DECK)
 	end

 	def player2 
 		WarPlayer.new(DECK)
 	end
 end
