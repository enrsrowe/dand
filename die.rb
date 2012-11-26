module Die

  def self.roll_die
    rand(1..6)
  end

	def self.review
    value = roll_die
  	puts "The die was rolled with a score of #{@value}."
  end

end