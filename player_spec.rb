require_relative 'player'

#navigate using ls and cd. rspec player_spec.rb --color --format

describe 'player' do

	#before do
		
	#end

	it "has a capitalized name" do
		@player = Player.new("aaron", 150)

		@player.name.should == "Aaron"
	end

	it "has an initial health" do

		@player.health.should == 150
	end 

	it "has a string representation" do
		@player.to_s.should == "I'm #{@name} with a health of #{@health} and a score of #{@score}."
	end


	it "computes a score as the sum of its health and length of name" do
		@player.score.should ==  750
	end

	it "increases health by 15 when w00ted"
	 

	it "decreases health by 10 when blammed" 

end
