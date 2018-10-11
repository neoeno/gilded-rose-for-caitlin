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
    names = []
    @items.each do |item|
      names << item.name
    end
    names
  end

  def update_quality
    @items.each do |item|
      item.quality
    end
  end

  def update_sell_in
    sell_ins = []
    @items.each do |item|
      sell_ins << item.sell_in
    end
    sell_ins
  end
end
