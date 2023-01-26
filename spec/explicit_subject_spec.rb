RSpec.describe Hash do
  #  declair explicitly
  subject(:bob) do
    { a: 1, b: 2}
  end

  # let(:bob) {{a: 1, b: 2}}  almost the same

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nexted example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end
