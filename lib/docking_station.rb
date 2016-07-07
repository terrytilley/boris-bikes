require_relative 'bike'

class DockingStation
  attr_accessor :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    full? ? (fail 'Docking station full') : @bikes << bike
  end

  def release_bike
    empty? ? (fail 'No bike available') : @bikes.pop
  end

  private
  def full?
    @bikes.count >= @capacity
  end

  private
  def empty?
    @bikes.empty?
  end

end
