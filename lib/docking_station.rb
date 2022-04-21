class EmptyDockingStation < StandardError
end

class DockingStationFull < StandardError
end


class DockingStation
    attr_reader :bikes, :capacity
    DEFAULT_CAPACITY = 20

    def initialize(capacity = DEFAULT_CAPACITY)
        @bikes = []
        @capacity = capacity
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