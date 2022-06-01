require_relative '../lib/playing_card'
class CardDeck

  def initialize(cards = create_deck)
   @deck = cards

 end


 def cards_left
  @deck.count 
end

def deck 
  @deck
end

def deal
 @deck.shift
end

# private 

def create_deck
  standard_deck = []
  PlayingCard::SUITS.each do |suit|
    PlayingCard::RANKS.each do |rank|
     standard_deck.push(PlayingCard.new(rank, suit))
   end
 end
 standard_deck
end


def shuffle 
  deck.shuffle
end
end




