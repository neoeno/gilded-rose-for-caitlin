require 'aged_brie'

describe AgedBrie do
    it 'raises quality by one after a day' do
      brie = AgedBrie.new("Aged Brie", 1, 0)
      expect(brie.quality).to eq(1)
    end

    it 'never raises quality beyond 50' do
      brie = AgedBrie.new("Aged Brie", 1, 50)
      expect(brie.quality).to eq AgedBrie::MAXIMUM_VALUE
    end

    it 'raises quality by two after a day' do
      brie = AgedBrie.new("Aged Brie", 1, 0)
      brie.quality
      expect(brie.quality).to eq(2)
    end

    it 'only raises quality to 50 when quality is at 49' do
      brie = AgedBrie.new("Aged Brie", 0, 49)
      expect(brie.quality).to eq AgedBrie::MAXIMUM_VALUE
    end
end
