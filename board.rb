require 'pry'
class Board
  attr_accessor :winner, :status, :winning_scenarios

  
  def initialize #could sort of reuse for checkers
    @board = []
    9.times { @board << " " }
    @status = "open"
    @winning_scenarios = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

  end

  def blank #X
    " "
  end

  def get_square(move) #X
    @board[move]
  end

  def empty_square?(move) #X
    @board[move] == blank
  end

  def set_square(move, player) #X
    @board[move] = player.token
  end

  def check_and_set_square(move, player) #X
    if empty_square?(move)
      set_square(move, player)
    end
  end

  def check_for_win
    result = nil
    @winning_scenarios.each do |combo_array|
      if (@board[combo_array[0]] != blank && @board[combo_array[0]] == @board[combo_array[1]]) && @board[combo_array[1]] == @board[combo_array[2]]
        result = true
        break
      else
        result = false
      end 
    end 
    result
  end

  # def win_condition(combo_array)
  #   if (@board[combo_array[0]] != blank && @board[combo_array[0]] == @board[combo_array[1]]) && @board[combo_array[1]] == @board[combo_array[2]]
  #       result = true
  #       #break
  #     else
  #       result = false
  #   end

  # end

  def check_for_tie 
    check_for_win == false && board_full? == true ? true : false
  end

  def close_board #X
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