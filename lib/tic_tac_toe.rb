class TicTacToe
  
  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
    
  end
  
  WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]
  ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    index = (input.to_i - 1)
    index
  end
  
  def move(index, token)
    @board[index] = token
  end
  
  def position_taken?(index)
   #  index = input_to_index(selection)
   #  binding.pry
     @board[index] == " " ? false : true
   end
   
   def valid_move?(index)
     @board[index] == "X" || @board[index] == "O" || index > 9 ? false : true
  end
  
  def turn_count
    count = 0
    @board.each do |token|
    token == "O" || token == "X" ? count += 1 : count
    end
    count
  end
  
  def current_player
    odd?(@board.turn_count) ? "X" : "O"
  end
end