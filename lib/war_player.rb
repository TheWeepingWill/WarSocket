class WarPlayer
    attr_accessor :cards, :name

    def initialize(cards = [])
    	@cards = cards
    	@name = ["Saitama", "Tenma", "Revy", "Alexander", "Saber", "Lucifer", "Ono", "Droth"].sample
    end

	def play_card
		cards.shift
	end

	def take_cards(card)
       cards.push(card)
	end

	def cards_count
		cards.count 
	end

	def has_cards?
	 cards_count > 0 ? true : false
	end


end 
