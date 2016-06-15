
class Person
  attr_accessor :record, :token, :name, #:position

  @@players = []
  
  def initialize(name)
    self.name = name
    @record = {:wins => 0, :ties => 0, :losses => 0}
    @token = ""
    @@players << self
  end
  
  def self.find_or_create_by_name(name)
    result = self.all.find {|player| player.name == name}
    if result.nil?
      Person.new(name)
    else
      result
    end
    
  end

  def self.all 
    @@players
  end 
  
  def token_choice
    unless @token == "X" || @token == "O"
      puts "Would you like to be 'X' or 'O'?"
      @token = gets.upcase.chomp
    end
  end

  def player_move
    puts "Where would you like to go? (1 - 9)"
    @position = gets.chomp.to_i - 1
  end

##check
  # def valid_move?(board)
  #   if (@position > 0 && @position <= 9) && board.space_occupied(@position) == false
  #     return true
  #   else
  #     puts "Invalid selection. Please pick another spot."
  #     return false
     
  #   end
  # end
end


