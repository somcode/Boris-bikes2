require_relative 'bike'
class DockingStation
  attr_reader :bike

  def release_bike
    raise "there is no bike"
    @bike = Bike.new

  end

  def dock_bike(bike)
    raise "there is no space" unless @bike.nil?
     @bike = bike
  end
end
