require 'gilded_rose'
require 'item'

describe GildedRose do

  # describe '#name' do
  #   it 'checks that the name of the object has not changed' do
  #     item = GenericItem.new("Item", 1, 1)
  #     gr = GildedRose.new([item])
  #     expect(gr.name).to eq "Item"
  #   end
  # end

  describe '#update_quality' do
    it 'updates the quality of a GenericItem' do
      item = GenericItem.new("Item", 1, 1)
      gr = GildedRose.new([item])
      expect(gr.update_quality).to eq [0]
    end
    it 'updates the quality of 2 generic_items' do
      item = GenericItem.new("Item", 1, 1)
      item2 = GenericItem.new("Item", 1, 10)
      gr = GildedRose.new([item, item2])
      expect(gr.update_quality).to eq [0, 9]
    end
    it 'updates the quality for brie' do
      brie = AgedBrie.new("brie", 1, 2)
      gr = GildedRose.new([brie])
      expect(gr.update_quality).to eq [3]
    end
    it 'updates the quality of a generic item and a brie' do
      item = GenericItem.new("Item", 1, 1)
      brie = AgedBrie.new("brie", 1, 2)
      gr = GildedRose.new([item, brie])
      expect(gr.update_quality).to eq [0, 3]
    end
    it "it doesn't change the quality for sulfuras" do
      sulfuras = Sulfuras.new("sulfuras", 1, 80)
      gr = GildedRose.new([sulfuras])
      expect(gr.update_quality).to eq [80]
    end
    it "it doesn't change the quality for sulfuras, but does for brie" do
      sulfuras = Sulfuras.new("sulfuras", 1, 80)
      brie = AgedBrie.new("brie", 1, 2)
      gr = GildedRose.new([sulfuras, brie])
      expect(gr.update_quality).to eq [80, 3]
    end
    # it "never lowers quality below 0" do
    #   item = GenericItem.new("item", 1, 0)
    #   gr = GildedRose.new([item])
    #   expect(gr.update_quality).to eq [0]
    # end
    # it "never raises quality below 0" do
    #   brie = AgedBrie.new("brie", 0, 49)
    #   gr = GildedRose.new([brie])
    #   expect(gr.update_quality).to eq [50]
      # aged brie is looking after this atm
      # but what about conjured?
    # end


  end

end
