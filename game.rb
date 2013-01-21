require_relative 'player' #needed to add players to the game
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  #Added week 12
  def load_players(ARGV.shift || filename)
    File.readlines(filename).each do |line|
      name, health = line.split(',')
      player = Player.new(name, health.to_i)
      add_player(player)
    end
  end

  def save_high_scores(to_file="high_scores.txt")
    File.open(to_file, 'w') do |file|
      players.sort.each do |player|
        file.puts "#{player.name}, #{player.score}"
      end
    end    
  end

  def add_player(name)
    @players << name 
  end

  def play(rounds)
    1.upto(rounds) do |round|
        if block_given?
          break if yield
        end
      puts "You are playing a #{@title} game: Round #{round} - with #{@players.size} other players"
      puts "Let Battle Commence!"

      @players.each do |player| 
        puts player
      end

      #show available treasures.
      treasures = TreasureTrove::TREASURES #assign the treasures array inside the TreasureTrove Module to treasures.
      puts "\nThere are #{treasures.size} in the treasure trove."
      treasures.each do |treasure|
      puts "#{treasure.name} (#{treasure.points})" 
      end

      @players.each do |player|
        GameTurn.take_turn(player)

        #treasure = TreasureTrove.random
        #puts "After playing #{player.title}, received a #{treasure.name}."
        #puts player      
      end

    end
  end

  def print_stats
    puts "\n#{@title} Statistics:\n"

    #Sort players by strength
    strong_players, weak_players = @players.partition {|player| player.strong?}

    puts "#{strong_players.size} strong players:"
    strong_players.each do |player|
      print_name_and_health(player)
    end

    puts "#{weak_players.size} weak players:"
    weak_players.each do |player|
      print_name_and_health(player)
    end

    #Sort players by high score
    puts "\n#{@title} High Scores:\n"
    @players.sort.each do |player|
      puts "\n#{player.name.ljust(50, '.')} #{player.score}"
    end

    @players.each do |player|
      puts "\n#{player.name}'s point totals:"

      #create a listing of points accumulated on a per treasure basis      #Week 12?
      player.each_found_treasure do |treasure|
        puts "#{treasure.name} total points: #{treasure.points}"
      end

      #Print the total points: treasure found + health
      puts "#{player.points} grand total points"
    end

    #print the total points scored from all treasure found during the game
    puts "\n#{total_points} total points from treasures found"
  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def total_points
    @players.reduce(0) {|sum, player| sum + player.points}
  end

end