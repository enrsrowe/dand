require_relative 'player'

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

	it "has a string representation" do
		@player.to_s.should == "I'm Aaron with a health of 150 and a score of 750."
	end


	it "computes a score as the sum of its health and length of name" do
		@player.score.should ==  750
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


end
