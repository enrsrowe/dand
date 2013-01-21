require_relative 'player'
require_relative 'treasure_trove'

#navigate using ls and cd. rspec player_spec.rb --color --format

describe 'player' do

	before do
		@player = Player.new("aaron", 150)		
	end

	it "has a capitalized name" do

		@player.name.should == "Aaron"
	end

	it "has an initial health" do

		@player.health.should == 150
	end 

	#Added week 11
	it "has a string representation" do  
	  @player.found_treasure(Treasure.new(:hammer, 50))
	  @player.found_treasure(Treasure.new(:hammer, 50))

	  @player.to_s.should == "I'm Syntha with health = 150, points = 100, and score = 250."
	end

	#added week 11
	it "computes a score as the sum of its health and points" do
	  @player.found_treasure(Treasure.new(:hammer, 50))
	  @player.found_treasure(Treasure.new(:hammer, 50))
	  
	  @player.score.should == 250
	end

	it "increases health by 15 when w00ted" do
		@player.w00t
		@player.health.should == 165
	end
	 

	it "decreases health by 10 when blammed" do
		@player.blam
		@player.health.should == 140
	end

	it "is strong" do
		@player.strong? == "true"
		#@player.should be_strong
	end

	it "is weak" do
		@player.blam
		@player.should_not be_strong
	end

	#Added Week 11
	it "computes points as the sum of all treasure points" do
	   @player.points.should == 0

	   @player.found_treasure(Treasure.new(:hammer, 50))

	   @player.points.should == 50

	   @player.found_treasure(Treasure.new(:crowbar, 400))

	   @player.points.should == 450

	   @player.found_treasure(Treasure.new(:hammer, 50))

	   @player.points.should == 500
	 end

	 #Added Week 12
	 it "yields each found treasure and its total points" do
		  @player.found_treasure(Treasure.new(:bladder of wine, 100))
		  @player.found_treasure(Treasure.new(:bladder of wine, 100))
		  @player.found_treasure(Treasure.new(:hammer, 50))
		  @player.found_treasure(Treasure.new(:bottle, 5))
		  @player.found_treasure(Treasure.new(:bottle, 5))
		  @player.found_treasure(Treasure.new(:bottle, 5))
		  @player.found_treasure(Treasure.new(:bottle, 5))
		  @player.found_treasure(Treasure.new(:bottle, 5))
		  
		  yielded = []
		  @player.each_found_treasure do |treasure|
		    yielded << treasure
		  end
		  
		  yielded.should == [
		    Treasure.new(:bladder of wine, 200), 
		    Treasure.new(:hammer, 50), 
		    Treasure.new(:bottle, 25)
		 ]
		end


end
