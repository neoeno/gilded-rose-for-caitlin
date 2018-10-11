# Add an item `MagicBean` whose quality decreases randomly by either 1 or 0 every
# time `#update_quality` is called.

require 'magic_bean'

describe MagicBean do
  let(:magic_bean) { MagicBean.new("magic_bean", 1, 1) }
  it 'decreases quality by 1' do
    allow(Kernel).to receive(:rand).and_return(1)
    expect(magic_bean.change_quality).to eq 0
  end
  it 'decreases quality by 0' do
    allow(Kernel).to receive(:rand).and_return(0)
    expect(magic_bean.change_quality).to eq 1
  end
  it 'will not decrease quality past 0' do
    allow(Kernel).to receive(:rand).and_return(1)
    magic_bean.change_quality
    expect(magic_bean.change_quality).to eq 0
  end

end
