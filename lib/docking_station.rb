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
        @bikes.empty? ? (raise EmptyDockingStation) : Bike.new
    end

    def dock_bike(bike)
        if full?
            raise DockingStationFull
        else
             @bikes << bike
        end
    end

    private

    def full?
        @bikes.length >= @capacity
    end
end