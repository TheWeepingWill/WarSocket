 require_relative 'card_deck'
 require_relative 'war_player'
 require 'pry'

 class WarGame 

 	attr_reader :deck, :players
 	attr_accessor :rounds

 	def initialize(players = [WarPlayer.new, WarPlayer.new])
 		@players = players
 		@deck = CardDeck.new
 		@rounds = 0 
 	end
   #GAMEPLAY
   def start
   	deal_cards
   end

   def deal_cards
   	until deck.count_cards == 0 
   		players.each { |player| player.take_cards(deck.deal) }
   	end
   end

   def play_round
   	holder = []

   	play_hand(holder)

   end

   def play_hand(holder)

   	card1 = player1.play_card
   	card2 = player2.play_card

   	if card1.value == card2.value
   		tie(card1, card2, holder)
   	else 
   		win(card1, card2, holder)
   	end

   end

   def tie(card1, card2, holder)
   	holder.push(card1, card2)
   	play_hand(holder)
   end

   def win(card1, card2, holder)
   	self.rounds += 1
   	mid_game_shuffle

   	if card1.value > card2.value 
   		player1_wins(card1, card2, holder)
   	else
   		player2_wins(card1, card2, holder)
   	end

   end


   def player1_wins(card1, card2, holder)
   	if holder.length == 0 
   		player1.take_cards(card1, card2)
   	else
   		player1.take_cards(card1, card2, *holder)
   	end
   	final_message(round_winner(player1), loser_card(card2), winner_card(card1))
   end

   def player2_wins(card1, card2, holder)
   	if holder.length == 0 
   		player2.take_cards(card1, card2)
   	else
   		player2.take_cards(card1, card2, *holder)
   	end
   	final_message(round_winner(player2), loser_card(card1), winner_card(card2))
   end

   def mid_game_shuffle
   	if rounds%4 == 0 
   		player1.cards.shuffle!
   		player2.cards.shuffle!
   	end
   end
#INFO
def player1
	players[0]
end

def player2
	players[1]
end

def round_winner(player)
	player.name
end

def loser_card(card)
	card
end

def winner_card(card)
	card
end

def final_message(winner, losing_card, winning_card)
	"Player #{winner} took #{losing_card.rank} of #{losing_card.suit} with #{winning_card.rank} of #{winning_card.suit}"
end


def winner
	if player1.cards.empty?
		player2 
	elsif player2.cards.empty?
		player1
	else 
		false  
	end
end




end


