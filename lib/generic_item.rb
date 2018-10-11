require_relative 'item'

class GenericItem < Item

  MINIMUM_QUALITY = 0

  def quality
    @quality -= 1
  end

  def sell_in
    @sell_in -= 1
  end

  def get_quality
    @quality
  end

end
