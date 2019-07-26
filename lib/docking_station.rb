require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end

  attr_reader :bikes, :bike

  def dock(bike)
    fail 'Docking station is full' if full?
    @bikes << bike
    bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

end