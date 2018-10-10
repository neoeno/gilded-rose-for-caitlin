require_relative 'item'

class GenericItem < Item

  def quality
    @quality -= 1
  end

  def sell_in
    @sell_in -= 1
  end

end
