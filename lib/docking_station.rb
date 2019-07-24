require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize(bike)
    @bikes = bike
  end

  def release_bike
    @bikes << Bike.new
  end

end