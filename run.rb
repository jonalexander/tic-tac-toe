require 'pry'
require_relative 'board.rb'
require_relative 'player.rb'
require_relative 'computer.rb'
require_relative 'game.rb'
require_relative 'square.rb'


Game.greeting_message  
current_game = Game.new
current_game.get_player_and_opponent
current_game.game_loop
Game.goodbye_message












