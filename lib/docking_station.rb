require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  attr_reader :bikes, :bike

  def dock(bike)
    fail 'Docking station is full' if @bikes.count >= 20
    @bikes << bike
    bike
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

end