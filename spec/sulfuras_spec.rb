require 'sulfuras'

describe Sulfuras do
  it 'does not change quality' do
    sulfuras = Sulfuras.new("Sulfuras, Hand of Ragnaros", 1, 80)
    expect(sulfuras.quality).to eq(80)
  end
  it 'does not change sell_in' do
    sulfuras = Sulfuras.new("Sulfuras, Hand of Ragnaros", 1, 80)
    expect(sulfuras.sell_in).to eq(1)
  end
end
