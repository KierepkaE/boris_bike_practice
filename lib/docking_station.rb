require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
  end

  def dock(bike)
    fail 'Docking station is full' if @bikes
    @bikes = bike
    bike
  end

  def release_bike
    fail 'No bikes available' unless @bikes
    @bikes
  end

end