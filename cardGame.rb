# I get that this file requires both previous files
require './game'
require './cards'

# I don't get why we need to define that playing is true
# when user plays, won't it automatically consider it to
# be being played?
playing = true

game = Game.new

while playing

  game.play
  puts "current score is: #{game.check_game.to_s}"

  puts "do you want to play this hand?"
  # Akira says gets.chomps is process.argv
  # Is answer a method and not a place holder? Is
  # answer what is keyed into the command line
  # and that the terminal recognises "yes" or "no"?
  answer = gets.chomp
  if answer == "no"
    puts "folding"
    next
  end
  # -2 because of gets.chomp?
  if game.check_game < -2
    playing = false
  end
end