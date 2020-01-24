require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
    @bikes.count >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    return true if @bikes.empty? 
  end

end
