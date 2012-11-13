
########################Define Classes
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
    @title = title
    @players = []
  end

  def add_player(name)
    @players << name 
  end

  def play
    puts "You are playing a #{@title} game with #{@players.size} other players"
    puts "Let Battle Commence!"
    @players.each do |x|
      x.blam
      x.w00t
      x.w00t
      puts x
    end
  end

end
######################## Main Program

player1 = Player.new("aaron", 60)
player2 = Player.new("molvak", 125)
player3 = Player.new("syntha", 100)
player4 = Player.new("lorek",90)

dungeons = Game.new("Dungeons and Dragons") 
dungeons.add_player(player1)
dungeons.add_player(player2)
dungeons.add_player(player3)
dungeons.play






