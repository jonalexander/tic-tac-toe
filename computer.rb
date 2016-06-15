
class ComputerPlayer
  attr_accessor :record, :token, :name, :moves

  def initialize(name = "Computer")
    @name = name
    @token = ""
    @record = {:wins => 0, :losses => 0, :ties => 0}
    @moves = []
  end

  def set_computer_token(player)
    player.token == "X" ? @token = "O" : @token = "X"
  end

  def computer_move
    move = rand(0..8)
  end

  def add_move(move)
    @moves << move
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

