#Main program for the DandD game
require_relative 'game'
#require_relative 'player'

#Create a new game
game = Game.new("JMU Lecturers Face Off!")

#Create some new players
player1 = Player.new("Ronan", 150)
player2 = Player.new("Jamie", 160)
player3 = Player.new("Cliff", 140)
player4 = Player.new("klutz", 105)

#Add players to the game
game.add_player(player1)
game.add_player(player2)
game.add_player(player3)

#Play the game x rounds, if the points total exceeds 2000 end the game
game.play(3) do #number of rounds
	game.total_points >= 2000
end

