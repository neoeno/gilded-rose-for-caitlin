require 'pry'

class BackstagePasses
  MAXIMUM_VALUE = 50
  attr_accessor :name, :sell_in

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def quality
    if sell_in.zero?
      @quality = 0
    elsif @quality == MAXIMUM_VALUE
      @quality
    elsif sell_in >= 10
      @quality += 1
    elsif sell_in <= 5 && sell_in >= 0
      guard_quality
    end
  end

  private

  def guard_quality
    @quality > 47 ? @quality = MAXIMUM_VALUE : @quality += 3
  end

end
