class Die
	attr_reader :number

	def intitialize
		roll
	end

	def roll
		@number  = rand(1..6)
	end
end