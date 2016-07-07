require_relative 'bike'

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    full? ? (fail 'Docking station full') : @bikes << bike
  end

  def release_bike
    empty? ? (fail 'No bike available') : @bikes.pop
  end

  private
  def full?
    @bikes.count >= 20
  end

  private
  def empty?
    @bikes.empty?
  end

end
