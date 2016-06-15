
class ComputerPlayer
  attr_accessor :record, :token, :name, :moves

  def initialize(name = "Computer") #X
    @name = name
    @token = ""
    @record = {:wins => 0, :losses => 0, :ties => 0}
    @moves = []
  end

  def set_computer_token(player) #X
    player.token == "X" ? @token = "O" : @token = "X"
  end

  def computer_move
    move = rand(0..8)
  end

  def add_move(move) #X
    @moves << move
  end

  def update_record_win #X
    self.record[:wins] += 1
  end

  def update_record_loss #X
    self.record[:losses] += 1
  end

  def update_record_tie #X
    self.record[:ties] += 1
  end

end

