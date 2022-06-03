require 'socket'
require 'war_game'
require 'pry'

class WarSocketServer

  attr_accessor :games
  attr_accessor :clients

  def initialize
    @games = []
    @clients = []
  end

  def port_number
    3336
  end

  def start
    @server = TCPServer.new(port_number)
  end

  def accept_new_client(player_name = "Random Player")
    client = @server.accept_nonblock
    clients.push(WarPlayer.new(player_name))
  
  rescue IO::WaitReadable, Errno::EINTR
    puts "No client to accept"
  end

  def create_game_if_possible
    # binding.pry
    if clients.count == 2 
      games.push(WarGame.new(clients[0], client[1]))
    end
  end

  def stop
    @server.close if @server
  end
end


