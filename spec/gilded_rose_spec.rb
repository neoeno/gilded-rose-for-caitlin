require 'gilded_rose'
require 'item'

describe GildedRose do

  describe '#name' do
    it 'checks that the name of the object has not changed' do
      item = GenericItem.new("Item", 1, 1)
      gr = GildedRose.new([item])
      expect(item.name).to eq "Item"
    end
    it 'checks that the names of the objects have not changed' do
      item = GenericItem.new("Item", 1, 1)
      brie = AgedBrie.new("Brie", 1, 2)
      gr = GildedRose.new([item, brie])
      expect(item.name).to eq "Item"
      expect(brie.name).to eq "Brie"
    end
  end

  describe '#update_quality' do
    it 'updates the quality of a GenericItem' do
      item = GenericItem.new("Item", 1, 1)
      gr = GildedRose.new([item])
      gr.update_quality
      expect(item.quality).to eq 0
    end
    it 'updates the quality of 2 generic_items' do
      item = GenericItem.new("Item", 1, 1)
      item2 = GenericItem.new("Item", 1, 10)
      gr = GildedRose.new([item, item2])
      gr.update_quality
      expect(item.quality).to eq 0
      expect(item2.quality).to eq 9
    end
    it 'updates the quality for brie' do
      brie = AgedBrie.new("brie", 1, 2)
      gr = GildedRose.new([brie])
      gr.update_quality
      expect(brie.quality).to eq 3
    end
    it 'updates the quality of a generic item and a brie' do
      item = GenericItem.new("Item", 1, 1)
      brie = AgedBrie.new("brie", 1, 2)
      gr = GildedRose.new([item, brie])
      gr.update_quality
      expect(item.quality).to eq 0
      expect(brie.quality).to eq 3
    end
    it "it doesn't change the quality for sulfuras" do
      sulfuras = Sulfuras.new("sulfuras", 1, 80)
      gr = GildedRose.new([sulfuras])
      gr.update_quality
      expect(sulfuras.quality).to eq 80
    end
    it "it doesn't change the quality for sulfuras, but does for brie" do
      sulfuras = Sulfuras.new("sulfuras", 1, 80)
      brie = AgedBrie.new("brie", 1, 2)
      gr = GildedRose.new([sulfuras, brie])
      gr.update_quality
      expect(sulfuras.quality).to eq 80
      expect(brie.quality).to eq 3
    end
  end

  describe '#update_sell_in' do
    it 'updates the sell_in date for generic_item' do
      item = GenericItem.new("Item", 1, 1)
      gr = GildedRose.new([item])
      gr.update_sell_in
      expect(item.sell_in).to eq 0
    end
  end

end
