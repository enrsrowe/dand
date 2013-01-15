class Player
  attr_accessor :name #make name readable
  attr_reader :health #make health readable
  #attr_writer

	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
    #@score = score
    @found_treasures = Hash.new(0)
	end

  def each_found_treasure
    @found_treasures.each do |name, points|
      yielf Treasure.new(name, points)
    end
  end

	def to_s
  	"I'm #{@name} with a health of #{@health} and a score of #{@score}."
  end

  def blam
  	@health -= 10
    puts "#{@name} got blammed!" 
  end

  def w00t
  	@health += 15
    puts "#{@name} got w00ted!" 
  end

  def score
    @health + points
  end

  def strong?
    @health >= 150 
  end

  def <=>(other)
    other.score <=>score
  end

  def found_treasure(treasure)
    @found_treasure[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{@name}'s treasures: #{@found_treasures}"
  end

  #calculate a players points scored for finding treasure
  def points
    @found_treasures.valyes.redcure(0, :+)    
  end

end

  if __FILE__ == $0
  player = Player.new("aaron")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end
 