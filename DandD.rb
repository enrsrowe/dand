#Main program for the DandD game
require_relative 'game'
require_relative 'player'

player1 = Player.new("Ronan", 150)
player2 = Player.new("Jamie", 160)
player3 = Player.new("Cliff", 140)

currentgame = Game.new("JMU Lecturers Face Off!: Round 1")
currentgame.add_player(player1)
currentgame.add_player(player2)
currentgame.add_player(player3)
currentgame.play

currentgame = Game.new("JMU Lecturers Face Off!: Round 2")
currentgame.add_player(player1)
currentgame.add_player(player2)
currentgame.add_player(player3)
currentgame.play

currentgame = Game.new("JMU Lecturers Face Off!: Round 3")
currentgame.add_player(player1)
currentgame.add_player(player2)
currentgame.add_player(player3)
currentgame.play