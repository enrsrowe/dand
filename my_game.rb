player_1 = "Aaron"
player_1_health = 60
player_2 = "Molvak"
player_1_health = 70
player_3 = "Syntha"
player_1_health = 80

puts "Players:"
puts "\t #{player_1}"
puts "\t #{player_2}"
puts "\t #{player_3}"

puts "#{player_1.capitalize}'s health is #{player_1_health}" #{Player_1_Health*5} for *5
puts "#{player_2.uppercase}'s health is #{player_2_health}" 

def say_hello(player, health)
	puts "#{player} has #{health} remaining..."
end

say_hello(player_1, player_1_health)
say_hello(player_2, player_2_health)
say_hello(player_3, player_3_health)

puts player_1_health/9.00 #for a decimal output
puts player_1_health/9	  #for a integer output



