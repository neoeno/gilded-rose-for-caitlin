class GildedRose

  MAXIMUM_VALUE = 50

  def initialize(items)
    @items = items
  end

  def show_name
    @items.each do |item|
      item.name
    end
  end

  def update_quality
    @items.each do |item|
      item.quality
       case item.name
       when "Item"
         GenericItem.new.quality
       when "Aged Brie"
         AgedBrie.new.quality
       when "Sulfuras"
         Sulfuras.new.quality
       when "Conjured"
         Conjured.new.quality
       end
    end
  end

# how can I do this better?
  # def backstage_passes
  #   @items.each do |item|
  #     if item.sell_in <= 5
  #       if item.quality < 48
  #         item.quality += 3
  #       elsif item.quality == 48
  #         item.quality += 2
  #       elsif item.quality == 49
  #         item.quality += 1
  #       end
  #     else
  #       item.quality += 1 if item.quality < MAXIMUM_VALUE
  #     end
  #   end
  #   sell_by_passed?
  # end
  #
  # private
  #
  # def sell_by_passed?
  #   @items.each do |item|
  #     item.quality = 0 if item.sell_in.zero?
  #   end
  # end
end
