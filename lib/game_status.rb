# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  won=[]
  won=WIN_COMBINATIONS.select { |combination|
    board[combination[0]]==board[combination[1]] && board[combination[1]]==board[combination[2]] && board[combination[1]]!=" "
  }
  if won.length==0
    return nil
  else
    return won
  end
end

def full?(board)
  false
end

def draw?(board)
  false
end

def over?(board)
  false
end

def winner(board)
  "X"
end
