require_relative 'bike'
class DockingStation
  attr_reader :bikes

  def initialize(bike_class = Bike)
    @bikes = []
    20.times { @bikes << bike_class.new }
  end

  def release_bike
    raise "there is no bike" if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "there is no space" if @bikes.length >= 20
    @bikes.push(bike)

  end
end
