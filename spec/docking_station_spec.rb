require './lib/docking_station'

describe DockingStation do

        it 'responds to release_bike' do
            expect(subject).to respond_to :release_bike
        end

        #it "checks if the bike is working" do 
         #   expect(@bike.working?).to eq(true)
        #end
    end
