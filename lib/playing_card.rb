class PlayingCard 
	RANKS = %w( 2 3 4 5 6 7 8 9 10 J Q K A)
	SUITS = %w( H S C D)

	attr_reader :rank, :suit

	def initialize(rank, suit)
		if RANKS.include?(rank)
			@rank = rank
		end

		if SUITS.include?(suit) 
			@suit = suit 
		end
		

	end

	def ==(other)
		rank == other.rank && suit == other.suit
	end

	
end


