require 'generic_item'

describe GenericItem do
  it 'lowers quality by one after one day' do
    item = GenericItem.new("item", 1, 1)
    expect(item.quality).to eq(0)
  end

  it 'lowers quality by two after a day' do
    item = GenericItem.new("item", 0, 2)
    item.quality
    expect(item.quality).to eq(0)
  end

  it "lowers the sell_in by one after a day" do
    item = GenericItem.new("item", 1, 0)
    expect(item.sell_in).to eq(0)
  end

  it 'lowers by two each after two days' do
    item = GenericItem.new("item", 10, 0)
    item.sell_in
    expect(item.sell_in).to eq(8)
  end
end
