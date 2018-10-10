class GenericItem

  attr_accessor :name

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def quality
    @quality -= 1
  end

  def sell_in
    @sell_in -= 1
  end

end