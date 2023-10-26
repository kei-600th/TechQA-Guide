class AssemblyLine
  def initialize(speed)
    @speed = speed
    @production = @speed * 221
  end

  def production_rate_per_hour
    if @speed <5
      @production
    elsif @speed < 9
      @production * 0.9
    elsif @speed < 10
      @production * 0.8
    else
      @production * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
