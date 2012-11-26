require_relative 'die'
require_relative 'player'

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
      die = Die.new
      #number_rolled = die.roll_die
      case die.roll_die
      when 1..2
      x.blam
      puts "#{x.name} was blammed! :-("

      when 3..4
      puts "#{x.name} was skipped." 
      else      
        x.w00t
        puts "#{x.name} was w00ted!"
      end             

      puts x
    end
  end

end