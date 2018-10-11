require 'gilded_rose'
require 'item'

describe GildedRose do
  let(:item) { double(:generic_item, name: "Item", change_quality: 0, quality: 0,
                change_sell_in: 0, sell_in: 0) }
  let(:item2) { double(:generic_item, change_quality: 9, quality: 9) }
  let(:brie) { double(:aged_brie, name: "Brie", change_quality: 3, quality: 3) }
  let(:sulfuras) { double(:sulfuras, change_quality: 80, quality: 80) }
  let(:gr_item) { GildedRose.new([item]) }
  let(:gr_brie) { GildedRose.new([brie]) }
  let(:gr_item_brie) { GildedRose.new([item, brie]) }
  let(:gr_sulfuras) { GildedRose.new([sulfuras]) }
  let(:gr_sulfuras_brie) { GildedRose.new([sulfuras, brie]) }


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
    it 'updates the quality of a GenericItem' do
      gr_item.update_quality
      expect(item.quality).to eq 0
    end
    it 'updates the quality for brie' do
      gr_brie.update_quality
      expect(brie.quality).to eq 3
    end
    it 'updates the quality of a generic item and a brie' do
      gr_item_brie.update_quality
      expect(item.quality).to eq 0
      expect(brie.quality).to eq 3
    end
    it "it doesn't change the quality for sulfuras" do
      gr_sulfuras.update_quality
      expect(sulfuras.quality).to eq 80
    end
    it "it doesn't change the quality for sulfuras, but does for brie" do
      gr_sulfuras_brie.update_quality
      expect(sulfuras.quality).to eq 80
      expect(brie.quality).to eq 3
    end
  end

  describe '#update_sell_in' do
    it 'updates the sell_in date for generic_item' do
      gr_item.update_sell_in
      expect(item.sell_in).to eq 0
    end
  end

end
