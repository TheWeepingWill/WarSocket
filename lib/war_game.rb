 require_relative 'card_deck'

 class WarGame 
    attr_reader :deck

 	def initialize
 		@deck = CardDeck.new.shuffle
 	end

 	def start
 		deal_hands
 		#give hands to players
 		#play round
 	end

 	# def play_round
 	# end
    
    def deal_hands
    	until deck.count_cards == 0 
    		player1(deck.deal)
    		player2(deck.deal)
    	end
    end


 	def player1(hand) 
 		WarPlayer.new(hand)
 	end

 	def player2(hand) 
 		WarPlayer.new(hand)
 	end


 end

