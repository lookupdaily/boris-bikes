require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  def release_bike
    fail "No bikes available" if empty?
    bike = @bikes.pop()
  end

  def dock(bike)
    fail "No space available" if full?
    @bikes << bike
    bike
  end

  private

  def full?
    @bikes.count >= 20 ? true : false
  end

  def empty?
    return true if @bikes.empty? 
  end

end
