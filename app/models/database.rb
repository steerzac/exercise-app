class Database

  attr_accessor :exercises
  attr_accessor :measurements

  def initialize
    @exercises = Array.new
    @measurements = Array.new
  end

  def process_enter_new_measurements(weight, body_fat, height)
    @measurements.push([weight, body_fat, height])
  end
  
  def process_new_exercise(name, type, disc, muscle)
    @exercises.push([name, type, disc, muscle])
  end

end
