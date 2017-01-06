require_relative 'bike'

class DockingStation

  attr_reader  :bike

  def initialize
    @bikes = [ ]
  end

  def release_bike
    if @bikes.empty?
       raise "No bikes available"
    else
       @bikes.pop
    end
  end

  def dock(bike)
     fail "Maximum capacity is reached" if @bikes.count >= 20
     @bikes  << bike
  end

  def show_bike
    @bikes
  end

end
