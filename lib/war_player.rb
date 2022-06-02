class WarPlayer


	def play_card(hand)
		hand.shift
	end

	def hand_count(hand)
		hand.count 
	end

	# def has_cards?
	#  hand_count > 0 ? true : false
	# end
end 
