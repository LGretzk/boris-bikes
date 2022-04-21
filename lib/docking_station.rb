class EmptyDockingStation < StandardError
end

class DockingStationFull < StandardError
end


class DockingStation 
    attr_reader :bikes

    def initialize
        @bikes = []
    end

    def release_bike
        @bikes.empty? ? (raise EmptyDockingStation) : Bike.new
    end

    def dock_bike(bike)
        @bikes << bike
    end
end