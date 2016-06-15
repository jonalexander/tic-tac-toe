# program design


# game class
# board class
# square class


1. intro  XX
2. get player info XX
3. create computer XX
4. set computer token XX


5. Create new Game   XX
6. set @player XX
7. set @opponent XX
8. determine who's turn it is XX
9. initiate new board XX

 update board
 print the board

10. check for wins XXX
11. check for ties XX


issues

1. square 1 wins
2. computer isnt winning with 3 in a row
3. wrong numbers when selecting a square
4. create play again feature
5. end of each game return player's updated record




# turns

example 1
 @turn_count = 0
 human makes move if @turn_count % 2 == 0
 computer makes move if @turn_count % 2 == 1

 def current_move
  if @turn_count.even?
   @player
  else
   @computer
   end
  end

example 2

def switch_players
      @current_player, @other_player = @other_player, @current_player
    end



@board = [
[X, O, X]  @board[0][0], @board[0][1], @board[0][2]
[O, X, O], @board[1][0], @board[0][1], @board[0][2]
[X, O, X]  @board[2][0], @board[0][1], @board[0][2]
]


def human_move_translate(human_move)
 input_coords = {
    "1" => [0, 0],
    "2" => [0, 1],
    "3" => [0, 2],
    "4" => [1, 0],
    "5" => [1, 1],
    "6" => [1, 2],
    "7" => [2, 0],
    "8" => [2, 1],
    "9" => [2, 2]
   }
   return input_coords[human_move]
end