class Database

  attr_accessor :measurements

  def initialize
    @measurements = Array.new
  end

  def process_enter_new_measurements(weight, body_fat, height)
    @measurements.push([weight, body_fat, height])
  end

end
