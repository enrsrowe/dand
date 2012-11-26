module Die

  def self.roll_die
    rand(1..6)
  end

	def self.review(player)
    number_rolled = roll_die

    puts "The die was rolled with a score of #{@number_rolled}."

    case number_rolled
      when 1..2
        x.blam
        puts "#{player.name} was blammed! :-("
      when 3..4
        puts "#{player.name} was skipped." 
      else      
        x.w00t
        puts "#{player.name} was w00ted!"
      end   
  end

end