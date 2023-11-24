class Series
  def initialize(series)
    @array =[]
    @series = series
  end

  def slices(num)
    raise ArgumentError, 'bad number.' if num <= 0 || num > @series.length

    @array = []
    for i in 0..(@series.size - num)
      @array.push(@series.slice(i, num))
    end
    @array
  end
end