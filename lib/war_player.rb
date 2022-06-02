class WarPlayer
	attr_reader :hand

	def initialize(hand)
		@hand = hand
	end


	def play_card
		hand.shift
	end

	def hand_count
		hand.count 
	end

	def has_cards?
		if hand_count > 0 
			true
		else
			false
		end
	end
end 
