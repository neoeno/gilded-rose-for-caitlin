require_relative 'generic_item'
require_relative 'aged_brie'
require_relative 'sulfuras'
require_relative 'conjured'
require_relative 'item'
require 'pry'

class GildedRose

  def initialize(items)
    @items = items
  end

  # def name
  #   @items.each do |item|
  #     item.name
  #   end
  # end

  def update_quality
    qualities = []
    @items.each do |item|
      qualities << item.quality
    end
    qualities
  end

  private
  def protect_quality
    @quality = 0 if @quality.negative?
  end

end
