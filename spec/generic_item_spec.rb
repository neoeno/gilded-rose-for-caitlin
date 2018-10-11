require 'generic_item'

describe GenericItem do
  it 'lowers quality by one after one day' do
    item = GenericItem.new("item", 1, 1)
    expect(item.change_quality).to eq(0)
  end

  it 'lowers quality by two after a day' do
    item = GenericItem.new("item", 0, 2)
    item.change_quality
    expect(item.change_quality).to eq(0)
  end

  # it "doesn't lower quality below MINIMUM_QUALITY" do
  #   item = GenericItem.new("item", 0, 0)
  #   expect(item.quality).to eq GenericItem::MINIMUM_QUALITY
  # end

  it "lowers the sell_in by one after a day" do
    item = GenericItem.new("item", 1, 0)
    expect(item.change_sell_in).to eq(0)
  end

  it 'lowers by two each after two days' do
    item = GenericItem.new("item", 10, 0)
    item.change_sell_in
    expect(item.change_sell_in).to eq(8)
  end
end
