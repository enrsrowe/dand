class Player
	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end

	def to_s
  	"I'm #{@name} with a health of #{@health}."
  end

  def blam
  	@health -= 10
  end

  def w00t
  	@health +=10
  end
end

player_1 = Player.new("aaron", 60)
#puts player_1.inspect
puts player_1

player_2 = Player.new("molvak", 125)
#puts player_2.inspect
puts player_2

player_3 = Player.new("syntha", 100)
#puts player_3.inspect
puts player_3

player_4 = Player.new("lorek",90)
#puts player_4.inspect
puts player_4
player_4.blam
puts player_4




