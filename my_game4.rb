class Player
  attr_reader :health
  attr_accessor :name
    #attr_writer

	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
    @score = score
	end

	def to_s
  	"I'm #{@name} with a health of #{@health} and a score of #{@score}."
  end

  def blam
  	@health -= 10
        puts "#{@name} got blammed!" 
  end

  def w00t
  	@health +=10
    puts "#{@name} got w00ted!" 
  end

  def score
    @health * @name.length
  end
end
########################

class Game
  attr_reader :title

  def initialize(title)
    @title = title.capitalize
    dungeons = Game.new("Dungeons and Dragons")
  end

  def add_player

  end

end

########################


dungeons.add_player(player1)
dungeons.add_player(player2)
dungeons.add_player(player3)




#arr = ['Blink', 'Freakonomics','Outliers']
arr2 = []
arr2.push('Blink', 'Freakonomics', 'Outliers')
puts arr2
puts arr2[2]
puts arr2[4]
puts arr2.size
arr2.pop
arr2.pop
arr2.pop
puts arr2.empty?
arr2.push('Blink', 'Freakonomics', 'Outliers')
puts arr2.join(' and ') 
puts arr2.shuffle #!rotate: rotates array and saves it

player_1 = Player.new("aaron", 60)
#puts player_1.inspect
#puts player_1

player_2 = Player.new("molvak", 125)
#puts player_2.inspect
#puts player_2

player_3 = Player.new("syntha", 100)
#puts player_3.inspect
#puts player_3

player_4 = Player.new("lorek",90)
#puts player_4.inspect
#puts player_4

#player_4.blam
#puts player_4
#puts ""
#puts player_1.health
#puts player_2.health
#puts player_3.health
#puts player_4.health

#puts player_2.name = "murda"
#puts player_2.name

#puts player_2
 
players = [player_1, player_2, player_3]
#puts players
puts "There are #{players.size} players in the game."

#players.pop 
players.delete(player_3)
puts "There are #{players.size} players in the game."

players.push(player_4)
puts "There are #{players.size} players in the game."

players.each do |x|
  x.blam
  x.w00t
  x.w00t
  puts x
end






