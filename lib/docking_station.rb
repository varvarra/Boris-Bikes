require_relative 'bike'

class DockingStation

  attr_reader  :bike

  def initialize
    @bikes = [ ]
  end

  def release_bike
    if empty? 
       raise "No bikes available"
    else
       @bikes.pop
    end
  end

  def dock(bike)
    if full?
     fail "Maximum capacity is reached"
    else
     @bikes  << bike
   end
  end


  def show_bike
    @bikes
  end

  private

  def full?
     @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
