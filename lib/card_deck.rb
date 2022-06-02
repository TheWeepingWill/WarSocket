require_relative '../lib/playing_card'
require 'pry'
class CardDeck

  def initialize(cards = create_deck)
    @deck = cards
  end

  def deck 
    @deck
  end

  def count_cards
    deck.length 
  end

  def deal
   deck.shift
 end

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
 CardDeck.new(deck.shuffle)
end

end






