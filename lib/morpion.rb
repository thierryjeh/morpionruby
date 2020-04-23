require 'colorize'
require 'pry'



puts "**** Le jeu du Morpion ****."
puts ""

puts "___________________".light_blue
puts lcol =  "|     |     |     |".light_blue 
puts "|  ".light_blue+"1".blue+"  |  ".light_blue+"2".blue+"  |  ".light_blue+"3".blue+"  |".light_blue
puts bcol = "|_____|_____|_____|".light_blue
puts lcol
puts "|  ".light_blue+"4".blue+"  |  ".light_blue+"5".blue+"  |  ".light_blue+"6".blue+"  |".light_blue
puts bcol
puts lcol
puts "|  ".light_blue+"7".blue+"  |  ".light_blue+"8".blue+"  |  ".light_blue+"9".blue+"  |".light_blue
puts bcol
puts ""


puts "Entrez le chiffre d'une position."



board = Array[' ',' ',' ',' ',' ',' ',' ',' ',' ']
def markboard(pos, play, board)
    if pos == '1' 
      if board[0] == ' ' 
        board[0] = play
      else
        puts "Place déjà prise!"
        maincontrol(play, board)
      end
    elsif pos == '2' 
      if board[1] == ' ' 
        board[1] = play
      else
        puts "Place déjà prise!"
        maincontrol(play, board)
      end
    elsif pos == '3' 
     if board[2] == ' ' 
       board[2] = play
      else
        puts "Place déjà prise!"
        maincontrol(play, board)
      end
    elsif pos == '4' 
     if board[3] == ' ' 
       board[3] = play
      else
        puts "Place déjà prise!"
        maincontrol(play, board)
      end
    elsif pos == '5' 
     if board[4] == ' ' 
       board[4] = play
      else
        puts "Place déjà prise!"
        maincontrol(play, board)
      end
    elsif pos == '6' 
     if board[5] == ' ' 
       board[5] = play
      else
        puts "Place déjà prise!"
        maincontrol(play, board)
      end
    elsif pos == '7' 
     if board[6] == ' ' 
       board[6] = play
      else
        puts "Place déjà prise!"
        maincontrol(play, board)
      end
    elsif pos == '8' 
     if board[7] == ' ' 
       board[7] = play
      else
        puts "Place déjà prise!"
        maincontrol(play, board)
      end
    elsif pos == '9' 
     if board[8] == ' ' 
       board[8] = play
     end
    end
    return board
end


def prompt(*args)
    print(" Entrez le chiffre d'une position: ")
    pos = gets.chomp
    return pos
end

def boardprinter(board)
  puts "Voici la grille: "  
  puts ""              
   toprow = puts "___________________"  + "   " +"___________________".light_blue
   puts lcol =  "|     |     |     |"   + "   " + "|     |     |     |".light_blue
   puts "|  "+board[0]+"  |  "+board[1]+"  |  "+board[2]+"  |" +"   " + "|  ".light_blue+"1".blue+"  |  ".light_blue+"2".blue+"  |  ".light_blue+"3".blue+"  |".light_blue
   puts bcol =  "|_____|_____|_____|" + "   " +"|_____|_____|_____|".light_blue
   puts lcol  
   puts "|  "+board[3]+"  |  "+board[4]+"  |  "+board[5]+"  |" + "   " +"|  ".light_blue+"4".blue+"  |  ".light_blue+"5".blue+"  |  ".light_blue+"6".blue+"  |".light_blue
   puts bcol
   puts lcol
   puts "|  "+board[6]+"  |  "+board[7]+"  |  "+board[8]+"  |"  + "   " +"|  ".light_blue+"7".blue+"  |  ".light_blue+"8".blue+"  |  ".light_blue+"9".blue+"  |".light_blue
   puts bcol
   puts ""
end





def boardwin(board)
  if board[0] == board[4]  # check the diagonal from left top to right bottom corner
    if board[4] == board[8] 
      if board[4] != ' ' 
        lastmessage = "Joueur " + board[0] + " gagne!"
        abort(lastmessage)
      end
    end
  end
  if board[2] == board[4] # check the diagonal from right top to left bottom corner
    if board[4] == board[6] 
      if board[6] != ' ' 
        lastmessage = "Joueur " + board[2] + " gagne!"
        abort(lastmessage)
      end
    end
  end
  if board[0] == board[3]  # check the left column
    if board[3] == board[6] 
      if board[6] != ' ' 
        lastmessage = "Joueur " + board[0] + " gagne!"
        abort(lastmessage)
      end
    end
  end
  if board[0] == board[1]  # check the top row
    if board[1] == board[2] 
      if board[0] != ' ' 
        lastmessage = "Joueur " + board[0] + " gagne!"
        abort(lastmessage)
      end
    end
  end
  if board[2] == board[5]  # check right column
    if board[5] == board[8] 
      if board[2] != ' ' 
        lastmessage = "Joueur " + board[2] + " gagne!"
        abort(lastmessage)
      end
    end
  end
  if board[6] == board[7]  # check bottom row
    if board[7] == board[8] 
      if board[8] != ' ' 
        lastmessage = "Joueur " + board[6] + " gagne!"
        abort(lastmessage)
      end
    end
  end
  if board[1] == board[4]  # check middle column
    if board[4] == board[7] 
      if board[1] != ' ' 
        lastmessage = "Joueur " + board[1] + " gagne!"
        abort(lastmessage)
      end
    end
  end
  if board[3] == board[4]  # check middle row
    if board[4] == board[5] 
      if board[3] != ' ' 
        lastmessage = "Joueur " + board[3] + " gagne!"
        abort(lastmessage)
      end
    end
  end
end


def boardpat(board, pat)
    if board[0] != ' ' 
      if board[1] != ' '
        if board[2] != ' ' 
          if board[3] != ' ' 
            if board[4] != ' ' 
              if board[5] != ' ' 
                if board[6] != ' ' 
                  if board[7] != ' ' 
                    if board[8] != ' ' 
                      puts "Game over."
                      abort("Match nul!")
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
end

def maincontrol(player, board)
  pos = prompt
  board = markboard(pos, player, board)
end



pat = "play"
counter = 0
player="X".light_blue
# As of 9/4/19 this while loop is for the counter and alternating the X and O users.
while pat == "play" do
  counter = counter + 1
  mes = player + ", c'est à vous."
  print(mes)
  pos = prompt
  board = markboard(pos, player, board)
  boardprinter(board)
  if player == 'X'.light_blue 
    player = "O".yellow
  else
    player = "X".light_blue
  end

  
  boardwin(board) #gagne ou perds
  boardpat(board, pat) # pat?
end




