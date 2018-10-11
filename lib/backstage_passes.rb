require 'pry'
require_relative 'item'

class BackstagePasses < Item
  MAXIMUM_VALUE = 50

  def quality
    return @quality = 0 if sell_in.zero?
    return @quality if @quality == MAXIMUM_VALUE
    return @quality += 1 if sell_in >= 10
    guard_quality if sell_in <= 5 && sell_in >= 0
  end

  private

  def guard_quality
    @quality > 47 ? @quality = MAXIMUM_VALUE : @quality += 3
  end

end
