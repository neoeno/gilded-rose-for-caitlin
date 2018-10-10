require_relative 'item'

class AgedBrie < Item

  MAXIMUM_VALUE = 50

  def quality
    @quality < MAXIMUM_VALUE ? @quality += 1 : @quality
  end

  def sell_in
    @sell_in -= 1
  end

end
