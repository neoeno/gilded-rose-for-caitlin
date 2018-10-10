class Conjured

  attr_accessor :name, :sell_in

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def quality
    @quality -= 2
  end
end
