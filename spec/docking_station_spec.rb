require './lib/docking_station'

describe DockingStation do

        it 'responds to release_bike' do
            expect(subject).to respond_to :release_bike
        end

        it 'returns a working bike' do
            bike = subject.release_bike
            expect(bike.working?).to be_truthy
        end

        it 'responds to dock_bike' do
            expect(subject).to respond_to(:dock_bike).with(1).argument
        end

        it 'docks the bike passed on as argument' do
            bike = Bike.new
            expect(subject.dock_bike(bike)).to eq bike
        end

        it 'returns an array with a bike' do

        end


    end
