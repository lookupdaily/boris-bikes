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
    check_status
    bike = @bikes.pop()
  end

  def dock(bike, status = "working")
    fail "No space available" if full?
    report_faulty(bike) if status == "broken"
    @bikes << bike
    bike
  end

  def report_faulty(bike)
     bike.status = "broken"
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    return true if @bikes.empty? 
  end

  def check_status
    bike = @bikes[0]
    fail "Won't release broken bike" if bike.status == "broken"

  end

end
