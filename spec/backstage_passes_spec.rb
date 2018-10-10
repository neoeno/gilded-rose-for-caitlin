require 'backstage_passes'

describe BackstagePasses do
  context 'when sell_in is greater than 10' do
    it 'increases quality by one after each day' do
      passes = BackstagePasses.new("Backstage passes to a TAFKAL80ETC concert", 15, 0)
      expect(passes.quality).to eq(1)
    end

    it 'never increases quality beyond 50' do
      passes = BackstagePasses.new("Backstage passes to a TAFKAL80ETC concert", 15, 50)
      expect(passes.quality).to eq BackstagePasses::MAXIMUM_VALUE
    end
  end

  context 'when sell_in is less than or equal to 10 but more than 5' do
    it 'increases quality by two after each day' do
      passes = BackstagePasses.new("Backstage passes to a TAFKAL80ETC concert", 10, 0)
      passes.quality
      expect(passes.quality).to eq(2)
    end

    it 'only raises quality to 50 when quality is at 49' do
      passes = BackstagePasses.new("Backstage passes to a TAFKAL80ETC concert", 10, 49)
      expect(passes.quality).to eq BackstagePasses::MAXIMUM_VALUE
    end
  end
#binding.pry
  context 'when sell_in is less than or equal to 5 but more than 0' do
    it 'increases quality by three after each day' do
      passes = BackstagePasses.new("Backstage passes to a TAFKAL80ETC concert", 5, 2)
      expect(passes.quality).to eq(5)
    end

    it 'only raises quality to 50 when quality is at 48 or more' do
      passes = BackstagePasses.new("Backstage passes to a TAFKAL80ETC concert", 5, 48)
      expect(passes.quality).to eq BackstagePasses::MAXIMUM_VALUE
    end
  end

  it 'sets quality to 0' do
    passes = BackstagePasses.new("Backstage passes to a TAFKAL80ETC concert", 0, 50)
    expect(passes.quality).to eq(0)
  end

  it 'does not change quality' do
    passes = BackstagePasses.new("Backstage passes to a TAFKAL80ETC concert", 0, 0)
    expect(passes.quality).to eq(0)
  end
end
