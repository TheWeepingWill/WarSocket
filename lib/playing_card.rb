class PlayingCard 
	RANKS = %w( A 2 3 4 5 6 7 8 9 10 J Q K)
	SUITS = %w( H S C D)


	def initialize(rank, suit)
		if RANKS.include?(rank.to_s) 
			@rank = rank 
		end

		if SUITS.include?(suit.to_s) 
			@suit = suit 
		end
		

	end

	def rank 
		@rank 
	end

	def suit 
		@suit
	end

	def ==(other)
		self.rank == other.rank && self.suit == other.suit
	end
end

