class WarPlayer
    attr_reader :playing_hand

    def initialize(playing_hand)
    	@playing_hand = playing_hand
    end

	def play_card
		playing_hand.shift
	end

	def playing_hand_count
		playing_hand.count 
	end

	def has_cards?
	 playing_hand_count > 0 ? true : false
	end


end 
