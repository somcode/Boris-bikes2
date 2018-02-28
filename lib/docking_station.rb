require_relative 'bike'
class DockingStation
  attr_reader :bikes

  def initialize(bike_class = Bike)
    @bikes = []
    20.times { @bikes << bike_class.new }
  end

  def release_bike
    raise "there is no bike" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "there is no space" if full?
    @bikes.push(bike)
  end

  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end
end
