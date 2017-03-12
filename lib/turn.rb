def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(board, index, current_player = "X")
    board[index] = current_player
    return board
  end

  def position_taken?(board, index)

    if      board[index] ==  " " ||
     board[index] ==  "" || board[index] ==  nil
  false
  else
  true
  end
  end

  def valid_move?(board, index)

    if index >8 || index <0
          false
       elsif !position_taken?(board,index)
         true
      else
         false
       end
     end

  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board,index)
      move(board, index, current_player= "X")
      display_board(board)
    else turn(board)
    end
  end
