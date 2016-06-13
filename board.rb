

class Board
  attr_accessor :board
  @@winning = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  def initialize
    @board = Array.new(9, " ")
  end

  def full_board?
    !@board.include?(" ") ##if full return true if not return false
  end

  def update(player, num)
    @board[num] = player.token
    #board1[8] = "X"
  end 

  def winning
    @@winning
  end

  #validity

  def space_occupied(position)
    if @board[position] != " "
      return true
    else
      return false
    end
  end

  def valid_move?(move)
    #move = move
      if (move >= 0 && move <= 8) && self.space_occupied(move) == false
        return true
      else
        puts "Invalid selection. Please pick another spot."
        false
      end
  end

  def game_over? ###first check to see if winning combo slots are filled
    ##then check to see if tokens all the same
    @@winning.each do |combo|
      if @board[combo[0]] != " " && @board[combo[0]] ==  @board[combo[1]] &&  @board[combo[1]] == @board[combo[2]]
        return true
      end
    end
    false
  end

  def print_board
  puts "         |     |      "
  puts "      #{@board[0]}  |  #{@board[1]}  |  #{@board[2]} "
  puts "    _____|_____|_____ "
  puts "         |     |      "
  puts "      #{@board[3]}  |  #{@board[4]}  |  #{@board[5]} "
  puts "    _____|_____|_____ "
  puts "         |     |      "
  puts "      #{@board[6]}  |  #{@board[7]}  |  #{@board[8]} "
  puts "         |     |      "
  puts " "
  puts " "
  puts " "
  puts " "
  end
end

