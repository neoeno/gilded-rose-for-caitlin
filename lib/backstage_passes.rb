require 'pry'
require_relative 'item'

class BackstagePasses < Item
  MAXIMUM_VALUE = 50

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
