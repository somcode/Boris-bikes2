require_relative 'bike'
class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
    20.times { @bikes << Bike.new }
  end

  def release_bike
    raise "Staaaahp! there is no bike" if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "there is no space" if @bikes.length == 20
    @bikes.push(bike)
     #@bike = bike
  end
end
