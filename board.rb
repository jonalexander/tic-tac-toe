require 'pry'
class Board
  attr_accessor :winner, :status

  @@winning_scenarios = [
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
    @board = []
    9.times { @board << " " }
    @status = "open"
  end

  def blank
    " "
  end

  def get_square(move)
    @board[move]
  end

  def empty_square?(move)
    @board[move] == blank
  end

  def set_square(move, player)
    @board[move] = player.token
  end

  def check_and_set_square(move, player)
    if empty_square?(move)
      set_square(move, player)
    end
  end

  def check_for_win
    @@winning_scenarios.each do |combo_array|
      winning_combo = [@board[combo_array[0]], @board[combo_array[1]], @board[combo_array[2]]]
      if !winning_combo.include?(blank) && winning_combo.uniq.length == 1
        return true
      else
        return false
      end 
    end 
  end

  def check_for_tie
    check_for_win == false && board_full? == true ? true : false
  end

  def close_board
    @status = "closed"
  end

  def board_full?
    answer = @board.each_with_object([]) do |square, result_array|
      result_array << square
    end
    answer.include?(blank) ? false : true
  end

  def print_board
    puts " "
    puts " "
    puts " "
    puts " "
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