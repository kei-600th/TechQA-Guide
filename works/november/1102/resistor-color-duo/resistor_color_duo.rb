class ResistorColorDuo
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
  def self.value(colors_array)
    big_num = COLORS.index(colors_array[0]) * 10
    small_num = COLORS.index(colors_array[1])
    big_num + small_num
  end
end