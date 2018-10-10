require 'gilded_rose'
require 'item'

describe GildedRose do

  describe '#show_name' do
    it "shows you the name of the item" do
      item = Item.new("foo", 0, 0)
      GildedRose.new([item]).show_name
      expect(item.name).to eq "foo"
    end
  end

  describe "#update_quality" do
    it "never lowers quality below 0" do
      item = Item.new("item", 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(0)
    end
  end

    # describe '#backstage_passes' do
    #   context 'when sell_in is greater than 10' do
    #     it 'increases quality by one after each day' do
    #       item = Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 0)
    #       GildedRose.new([item]).backstage_passes
    #       expect(item.quality).to eq(1)
    #     end
    #
    #     it 'never increases quality beyond 50' do
    #       item = Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 50)
    #       GildedRose.new([item]).backstage_passes
    #       expect(item.quality).to eq GildedRose::MAXIMUM_VALUE
    #     end
    #   end
    #
    #   context 'when sell_in is less than or equal to 10 but more than 5' do
    #     it 'increases quality by two after each day' do
    #       item = Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 0)
    #       2.times { GildedRose.new([item]).backstage_passes }
    #       expect(item.quality).to eq(2)
    #     end
    #
    #     it 'only raises quality to 50 when quality is at 49' do
    #       item = Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 49)
    #       GildedRose.new([item]).backstage_passes
    #       expect(item.quality).to eq GildedRose::MAXIMUM_VALUE
    #     end
    #   end
    #
    #   context 'when sell_in is less than or equal to 5 but more than 0' do
    #     it 'increases quality by three after each day' do
    #       item = Item.new("Backstage passes to a TAFKAL80ETC concert", 5, 0)
    #       GildedRose.new([item]).backstage_passes
    #       expect(item.quality).to eq(3)
    #     end
    #
    #     it 'only raises quality to 50 when quality is at 48 or more' do
    #       item = Item.new("Backstage passes to a TAFKAL80ETC concert", 5, 48)
    #       GildedRose.new([item]).backstage_passes
    #       expect(item.quality).to eq GildedRose::MAXIMUM_VALUE
    #     end
    #   end
    #
    #   it 'sets quality to 0' do
    #     item = Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 50)
    #     GildedRose.new([item]).backstage_passes
    #     expect(item.quality).to eq(0)
    #   end
    #
    #   it 'does not change quality' do
    #     item = Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 0)
    #     GildedRose.new([item]).backstage_passes
    #     expect(item.quality).to eq(0)
    #   end
    # end

end
