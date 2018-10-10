require 'conjured'

describe Conjured do
  it 'decrease quality by two after day one' do
    conjured = Conjured.new("Conjured", 0, 10)
    expect(conjured.quality).to eq 8
  end
  it 'decrease quality by four after two days' do
    conjured = Conjured.new("Conjured", 0, 10)
    conjured.quality
    expect(conjured.quality).to eq 6
  end
end
