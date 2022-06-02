 require_relative 'card_deck'

 class WarGame 
    attr_reader :deck 

 	def initialize(players = players(2))
 		@deck = CardDeck.new.shuffle
 		@players = players
 	end

 	def start
 		deal_hands
 		#give hands to players
 		#play round
 	end

 	# def play_round
 	# end
    
    # def deal_hands
    # 	until deck.count_cards == 0 
   
    # 	end
    # end
    def players(number)
    	number.times { Player.new() } 
    end

 end

