require './lib/docking_station'

describe DockingStation do

        it 'responds to release_bike' do
            expect(subject).to respond_to :release_bike
        end

        it 'raises an error when there are no bikes' do
            expect {subject.release_bike}.to raise_error(EmptyDockingStation)
        end

        it 'returns a working bike' do
            subject.dock_bike(Bike.new)
            bike = subject.release_bike
            expect(bike.working?).to be_truthy
        end

        it 'responds to dock_bike' do
            expect(subject).to respond_to(:dock_bike).with(1).argument
        end

        it 'raises an error when docking station is full' do
            subject.dock_bike(Bike.new)
            expect {subject.dock_bike(Bike.new)}.to raise_error(DockingStationFull)
        end

        it 'docks the bike passed on as argument' do
            bike = Bike.new
            expect(subject.dock_bike(bike)).to eq [bike]
        end

        it 'return the bike added to the docking station' do
            bike = Bike.new
            subject.dock_bike(bike)
            expect(subject.bikes).to eq [bike]
        end
    end
