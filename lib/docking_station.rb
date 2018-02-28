require_relative 'bike'
class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(bike_class = Bike)
    @bikes = []
    DEFAULT_CAPACITY.times { @bikes << bike_class.new }
  end

  def release_bike
    raise "there is no bike" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "there is no space" if full?
    @bikes.push(bike)
  end

  private

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
