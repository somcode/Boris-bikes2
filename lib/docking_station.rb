require_relative 'bike'
class DockingStation

  attr_reader :capacity, :bikes

  DEFAULT_CAPACITY = 4

  def initialize(capacity = DEFAULT_CAPACITY, bike_class = Bike)
    @bikes = []
    @capacity = capacity
    @capacity.times { @bikes << bike_class.new }
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

  #attr_reader :bikes

  def full?
    @bikes.length >= capacity
  end

  def empty?
    @bikes.empty?
  end
end
