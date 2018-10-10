require 'conjured'

describe Conjured do
  describe '#quality' do
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

  describe '#sell_in' do
    it 'lowers by one each day' do
      conjured = Conjured.new("conjured", 10, 0)
      expect(conjured.sell_in).to eq(9)
    end
    it 'lowers by two each after two days' do
      conjured = Conjured.new("conjured", 10, 0)
      conjured.sell_in
      expect(conjured.sell_in).to eq(8)
    end
  end
end
