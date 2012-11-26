require_relative 'game'

describe Game do
	#called before every example runs
  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)
    
    @game.add_player(@player)
  end

  it "blams a player if a low number is rolled" do
  		Die.stub(:roll_die).and_return(2)
  	@game.play;
  	@player.health.should == @initial_health - 10
  end

   it "skips a player if a medium number is rolled" do
  		Die.stub(:roll_die).and_return(4)
  		@game.play;
  	@player.health.should == @initial_health
  end

   it "blams a player if a high number is rolled" do
  		Die.stub(:roll_die).and_return(6)
  		@game.play;
  	@player.health.should == @initial_health + 15
  end
  
end