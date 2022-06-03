require 'pry'
class WarPlayer
    attr_accessor :cards, :name

    def initialize(cards = [], name = ["Saitama", "Tenma", "Revy", "Alexander", "Saber", "Lucifer", "Ono", "Droth"].sample)
    	@cards = cards
    	@name = name
    end

	def play_card
		cards.shift
	end

	def take_cards(*new_cards) 
		# binding.pry
		cards.push(*new_cards)
	end

	def cards_count
		cards.count 
	end

	def has_cards?
	 cards_count > 0 ? true : false
	end


end 
