board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts  "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
 index = input.to_i - 1
end


def move(board, index, character="X")
  board[index] = character
end


def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board,index)
      true
    end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  else
    return true
  end
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


def turn_count(board)
  counter = 0
  until counter == 9
    turn(board)
    counter += 1
  end
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
