require 'bundler'
Bundler.require

require_relative 'lib/morpion.rb'

pat = "play"
counter = 0
player="X".light_blue
# As of 9/4/19 this while loop is for the counter and alternating the X and O users.
while pat == "play" do
  counter = counter + 1
  mes = player + ", c'est à vous."
  print(mes)
  pos = prompt
  board = m_board(pos, player, board)
  boardprinter(board)
  if player == 'X'.light_blue 
    player = "O".yellow
  else
    player = "X".light_blue
  end

  boardwin(board) #gagne ou perds
  boardpat(board, pat) # pat?

end