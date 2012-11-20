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