
# Define your play method below


def play(board)
   counter = 0
   until counter == 9
     turn(board)
     counter += 1
   end
end

def turn_count(board)
   counter = 0
   board.each do |spaces|
      if spaces == "X" || spaces == "O"
         counter += 1
      end
   end
   counter
end
def current_player(board)
   turn_count(board) % 2 == 0 ? "X" : "O"
end