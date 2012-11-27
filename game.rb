require_relative 'player' #needed to add players to the game
require_relative 'game_turn'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(name)
    @players << name 
  end

  def play #(rounds)
    puts "You are playing a #{@title} game with #{@players.size} other players"
    puts "Let Battle Commence!"

    @players.each do |player| 
      puts player
    end


    @players.each do |player|
      GameTurn.take_turn(player)   
      puts player
    end
  end

end