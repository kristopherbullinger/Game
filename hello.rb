require_relative './game.rb'

puts "Hello! What is your name?"

$name = gets.chomp

puts "Nice to meet you #{$name}. What do you wish to call me?"

computer_name = gets.chomp

puts "Well then. I guess I am called #{computer_name} now."
puts "Would you like to play a game with me? (Y/N)"

choose_game = gets.chomp.upcase

if (choose_game == "Y" || choose_game == "YES")
  puts "Answer my questions correctly and you win.\nThere is a prize if you make it to the end!\nFirst:"
  game1 = Game.new
  game1.play
end

if (choose_game == "N" || choose_game == "NO")
  puts "that's too bad..."
end
