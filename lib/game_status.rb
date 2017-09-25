# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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

def won?(board)
  WIN_COMBINATIONS.each do |i|
    if (position_taken?(board,i[0]))
      if (board[i[0]] == board[i[1]] && board[i[0]] == board[i[2]])
        return i
      end
    end
  end
  false
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  !won?(board)
end

def over?(board)
  won?(board) || draw?(board) ? true : false
end

def winner(board)
  if (line = won?(board))
    return [line[0]]
  else return nil
  end
end
