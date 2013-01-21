#Main program for the DandD game
require_relative 'game'
#require_relative 'player'



#Create a new game
game = Game.new("JMU Lecturers Face Off!")
load_players('players.csv')
loop do
	#Read number of rounds
	puts "How many rounds? (type 'quit' to exit)"
	rounds = gets.chomp.downcase

	case rounds
	when /^\d+$/
		Puts "Enjoy your #{rounds} rounds!"

=begin
		#Create some new players
		player1 = Player.new("Ronan", 150)
		player2 = Player.new("Jamie", 160)
		player3 = Player.new("Cliff", 140)
		player4 = Player.new("klutz", 105)

		#Add players to the game
		game.add_player(player1)
		game.add_player(player2)
		game.add_player(player3)
		game.add_player(player4) 
=end


		#Play the game x rounds, if the points total exceeds 2000 end the game
		game.play(rounds.to_i) do #number of rounds
			game.total_points >= 2000
		end
	when 'quit','exit'
		game.print_stats
		break
	else
		puts "Please enter an integer or 'quit'"
		end
	end
	save_high_scores
end

