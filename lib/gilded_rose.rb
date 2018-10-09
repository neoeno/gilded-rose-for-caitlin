class GildedRose

  def initialize(items)
    @items = items
  end

  def show_name
    @items.each do |item|
      item.name
    end
  end

  def show_quality
    @items.each do |item|
      item.quality
    end
  end

  def generic_item
    @items.each do |item|
      item.quality -= 1
      item.sell_in -= 1
    end
  end

  def aged_brie
    @items.each do |item|
    item.quality += 1 if item.quality < 50
    end
  end

  def sulfuras
  end

#how can I do this better?
  def backstage_passes
    @items.each do |item|
      if item.sell_in <= 5
        if item.quality < 48
          item.quality += 3
        elsif item.quality == 48
          item.quality += 2
        elsif item.quality == 49
          item.quality += 1
        end
      else
        item.quality += 1 if item.quality < 50
      end
    end
    sell_by_passed?
  end

  private

  def sell_by_passed?
    @items.each do |item|
      item.quality = 0 if item.sell_in == 0
    end
  end
end
