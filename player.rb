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
 