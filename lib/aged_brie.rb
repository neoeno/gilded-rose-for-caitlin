class AgedBrie

  MAXIMUM_VALUE = 50

  attr_accessor :name

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def quality
    @quality < MAXIMUM_VALUE ? @quality += 1 : @quality
  end

  def sell_in
    @sell_in -= 1
  end

end
