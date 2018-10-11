require 'aged_brie'

describe AgedBrie do
  describe '#quality' do
    it 'raises quality by one after a day' do
      brie = AgedBrie.new("Aged Brie", 1, 0)
      expect(brie.change_quality).to eq(1)
    end

    it 'never raises quality beyond 50' do
      brie = AgedBrie.new("Aged Brie", 1, 50)
      expect(brie.change_quality).to eq AgedBrie::MAXIMUM_VALUE
    end

    it 'raises quality by two after a day' do
      brie = AgedBrie.new("Aged Brie", 1, 0)
      brie.change_quality
      expect(brie.change_quality).to eq(2)
    end

    it 'only raises quality to 50 when quality is at 49' do
      brie = AgedBrie.new("Aged Brie", 0, 49)
      expect(brie.change_quality).to eq AgedBrie::MAXIMUM_VALUE
    end
  end

  describe '#sell_in' do
    it 'lowers by one each day' do
      brie = AgedBrie.new("Aged Brie", 10, 0)
      expect(brie.sell_in).to eq(9)
    end
    it 'lowers by two each after two days' do
      brie = AgedBrie.new("Aged Brie", 10, 0)
      brie.sell_in
      expect(brie.sell_in).to eq(8)
    end
  end
end
