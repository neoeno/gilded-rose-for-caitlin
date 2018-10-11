require_relative 'item'

class GenericItem < Item

  MINIMUM_QUALITY = 0

  def change_quality
    @quality -= 1
  end

  def change_sell_in
    @sell_in -= 1
  end

end
