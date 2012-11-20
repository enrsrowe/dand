
def time
  current_time = Time.new
  current_time.strftime("%H:%M")
end 

def say_hello(player, health=100)
	puts "I am #{player} with a health of #{health} as of #{time}."
end

say_hello("aaron", 60)
say_hello("molvak", 125)
say_hello("syntha")
say_hello("lorek",90)



