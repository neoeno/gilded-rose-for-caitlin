require 'gilded_rose'
require 'item'

describe GildedRose do
  let(:item) { double(:generic_item, name: "Item", change_quality: 0, quality: 0, change_sell_in: 0, sell_in: 0) }
  let(:brie) { double(:aged_brie, name: "Brie", change_quality: 3, quality: 3) }
  let(:gr_item) { GildedRose.new([item]) }
  let(:gr_brie) { GildedRose.new([brie]) }
  let(:gr_item_brie) { GildedRose.new([item, brie]) }

  describe '#name' do
    it 'checks that the name of the object has not changed' do
      gr_item
      expect(item.name).to eq "Item"
    end
    it 'checks that the names of the objects have not changed' do
      gr_item_brie
      expect(item.name).to eq "Item"
      expect(brie.name).to eq "Brie"
    end
  end

  describe '#update_quality' do
    it "tells each item to change its quality" do
      item_1 = double :item_1
      gilded_rose = GildedRose.new([item_1])
      expect(item_1).to receive(:change_quality)
      gilded_rose.update_quality
    end
  end

  describe '#update_sell_in' do
    it 'updates the sell_in date for generic_item' do
      gr_item.update_sell_in
      expect(item.sell_in).to eq 0
    end
  end

end
