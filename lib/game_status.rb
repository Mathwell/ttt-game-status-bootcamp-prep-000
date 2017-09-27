# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)

  won=WIN_COMBINATIONS.detect { |combination|
    board[combination[0]]==board[combination[1]] && board[combination[1]]==board[combination[2]] && board[combination[1]]!=" "
  }

  if won==nil
    return false
  else
    return won
  end
end

def full?(board)
  return true

end

def draw?(board)
  if (full?(board) && !won?(board))
    return true
  elsif (!full?(board) && !won?(board))
    return false
  else
    return false
  end
end

def over?(board)
 if full?(board) || won?(board)
   return true
 else
   return false
 end
end

def winner(board)
  count=0
  board.each {|cell|
  if (cell=="X" || cell=="O")
    count+=1
  end
  }
if !won?(board)
  return nil
end
puts board[won?(board)[0]]

puts "count #{count}"
  if (count%2==1)
    return "X"
  else
    return "Y"
  end
end
