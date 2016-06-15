

class Player
  attr_accessor :name, :token, :record, :moves

  @@all_players = []

  def initialize(name)
    @name = name
    @record = {:wins => 0, :losses => 0, :ties => 0}
    @@all_players << self
    @token = ""
    @moves = []
  end

  def self.all
    @@all_players
  end

  def access_moves
    @moves
  end

  def add_move(move)
    @moves << move
  end

  def self.find_or_create_by_name(name)
    search_result = self.all.detect { |player| player.name == name }
    #search_result.nil? ? Player.new(name) : return search_result
    if search_result.nil?
      Player.new(name)
    else
      search_result
    end
  end 

  def set_player_token
     @token = gets.upcase.strip
  end

  def update_record_win
    self.record[:wins] += 1
  end

  def update_record_loss
    self.record[:losses] += 1
  end

  def update_record_tie
    self.record[:ties] += 1
  end
end

