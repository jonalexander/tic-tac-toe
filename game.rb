
require 'pry'

require_relative 'person.rb'
require_relative 'board.rb'
require_relative 'computer.rb'


puts "Welcome, the instruction to Tic-Tac-Toe are as followed: 
To answer please use 1-9, which corresponds to a space of 
the board. 

Please enter your name."


name=gets.chomp
player_1 = Person.find_or_create_by_name(name)
player_1.token_choice

cpu = Computer.new(player_1)

board_1 = Board.new
board_1.print_board

#gameplay loop
while true 
  #user moves 
  user_move = player_1.player_move
    #binding.pry
  until board_1.valid_move?(user_move) 
    user_move = player_1.player_move
  end 
    #binding.pry
    board_1.update(player_1, user_move)
    #binding.pry
    if board_1.game_over?
      puts "Congrats you won!"
      #determine who won
      board_1.print_board
      player_1.record[:wins] += 1
      break
      #update their hash 
    elsif board_1.full_board?
      board_1.print_board
      puts "Tie!"
      player_1.record[:ties] += 1
      break
    end


    board_1.print_board


    cpu_move = cpu.cpu_move
    until board_1.valid_move?(cpu_move) 
      cpu_move = cpu.cpu_move
    end 
    board_1.update(cpu, cpu_move)

     board_1.print_board

      if board_1.game_over?
      puts "Sorry the computer won!"
      #determine who won
      board_1.print_board
      player_1.record[:losses] += 1
      break
      #update their hash 
      elsif board_1.full_board?
        puts "Tie!"
        board_1.print_board
        player_1.record[:ties] += 1
        break
      end
  
end
  #board_1.print_board

Pry.start

  # board_1.update(player_1, move)
  # move = cpu.cpu_move
  # move = player_1.player_move
  # until player_1.valid_move?(board_1)
  #   move = player_1.player_move
  # end

  # board_1.print_board



# until board_1.valid_move?(move)
#   binding.pry
#   move = player_1.player_move
# end



  










