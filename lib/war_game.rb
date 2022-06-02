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
    	hand1 = []
        hand2 = []
        hands = [hand1, hand2]
    	until deck.count_cards == 0 
    		hand1.push(deck.deal)
    		hand2.push(deck.deal)
    	end
    end

    def hand1
    	[]
    end
    
    def hand2
    	[]
    end





 	# def player1 
 	# 	WarPlayer.new()
 	# end

 	# def player2 
 	# 	WarPlayer.new()
 	# end
 end

 game = WarGame.new

 puts game.deal_hands
