require_relative 'player' #needed to add players to the game
require_relative 'game_turn'
require_relative 'treasure_trove'

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

    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.size} in the treasure trove."

    treasures.each do |treasure|
      puts "#{treasure.name} (#{treasure.points})" 
    end

    @players.each do |player|
      GameTurn.take_turn(player)

      treasure = TreasureTrove.random
      puts "After playing #{player.title}, received a #{treasure.name}."

      puts player
    end
  end

end