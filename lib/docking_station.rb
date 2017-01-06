require_relative 'bike'

class DockingStation

  attr_reader  :bike

  def initialize(bike = [])
    @bike = bike
  end

  def release_bike
    if @bike.empty?
       raise "No bikes available"
    else
       @bike
    end
  end

  def dock(b)
    if @bike.empty?
      @bike.push(b)
    else
      raise "Maximum capacity is reached"
    end
  end

  def show_bike
    @bike
  end

end
