# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [0,4,8],  # Diagonal 1
  [2,4,6]   # Diagonal 2
]

def won?(board)
  temp1 = [board[0],board[1],board[2]]
  temp2 = [board[3],board[4],board[5]]
  temp3 = [board[6],board[7],board[8]]
  temp4 = [board[0],board[3],board[6]]
  temp5 = [board[1],board[4],board[7]]
  temp6 = [board[2],board[5],board[8]]
  temp7 = [board[0],board[4],board[8]]
  temp8 = [board[2],board[4],board[6]]
  char1 = "X"
  char2 = "O"
  answer = []
  if(temp1[0] == temp1[1] && temp1[0] == temp1[2])
    if(temp1[0] == char1 || temp1[0] == char2)
      answer = WIN_COMBINATIONS[0]
      return true
    else
      return false
    end
  elsif(temp2[0] == temp2[1] && temp2[0] == temp2[2])
    if(temp2[0] == char1 || temp2[0] == char2)
      answer = WIN_COMBINATIONS[1]
      return true
    else
      return false
    end
  elsif(temp3[0] == temp3[1] && temp3[0] == temp3[2])
    if(temp3[0] == char1 || temp3[0] == char2)
      answer = WIN_COMBINATIONS[2]
      return true
    else
      return false
    end
  elsif(temp4[0] == temp4[1] && temp4[0] == temp4[2])
    if(temp4[0] == char1 || temp4[0] == char2)
      answer = WIN_COMBINATIONS[3]
      return true
    else
      return false
    end
  elsif(temp5[0] == temp5[1] && temp5[0] == temp5[2])
    if(temp5[0] == char1 || temp5[0] == char2)
      answer = WIN_COMBINATIONS[4]
      return true
    else
      return false
    end
  elsif(temp6[0] == temp6[1] && temp6[0] == temp6[2])
    if(temp6[0] == char1 || temp6[0] == char2)
      answer = WIN_COMBINATIONS[5]
      return true
    else
      return false
    end
  elsif(temp7[0] == temp7[1] && temp7[0] == temp7[2])
    if(temp7[0] == char1 || temp7[0] == char2)
      answer = WIN_COMBINATIONS[6]
      return true
    else
      return false
    end
  elsif(temp8[0] == temp8[1] && temp8[0] == temp8[2])
    if(temp8[0] == char1 || temp8[0] == char2)
      answer = WIN_COMBINATIONS[7]
      return true
    else
      return false
    end
  else
    return false
  end
end
