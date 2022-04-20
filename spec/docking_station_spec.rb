require './lib/docking_station'

describe DockingStation do

    describe ".release_bike" do
        @instance = DockingStation.new
        @bike = Bike.new
    
        it "gets a bike" do
            expect(@instance.release_bike).to eq(@bike)
        end
    
        it "checks if the bike is working" do 
            expect(@bike.working?).to eq(true)
        end
    end

end