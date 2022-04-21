class EmptyDockingStation < StandardError
end

class DockingStationFull < StandardError
end


class DockingStation 
    attr_reader :bikes, :capacity

    def initialize
        @bikes = []
        @capacity = 20
    end

    def release_bike
        empty? ? (raise EmptyDockingStation) : Bike.new
    end

    def dock_bike(bike)
        full? ? (raise DockingStationFull) : @bikes << bike
    end

    private

    def full?
        @bikes.length >= @capacity
    end

    def empty?
        @bikes.empty?
    end
end