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

  def name
    @items.each do |item|
      item.name
    end
  end

  def update_quality
    @items.each do |item|
      item.change_quality
    end
  end

  def update_sell_in
    @items.each do |item|
      item.change_sell_in
    end
  end
end
