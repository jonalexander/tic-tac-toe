
class Computer
  attr_accessor :token

  def initialize(person_object)
    if person_object.token== "X"
      @token = "O"
    else  
      @token = "X"
    end
  end 

  def cpu_move
    move = rand(0..8)  
  end
  
end

