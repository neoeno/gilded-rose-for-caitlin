require_relative 'item'

class Conjured < Item

  def quality
    @quality -= 2
  end

  def sell_in
    @sell_in -= 1
  end
end
