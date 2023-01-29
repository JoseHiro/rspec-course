RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('ate')
      expect(subject).to include('col')
    end

    it{is_expected.to include('hot')}
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(20)
      expect(subject).to include(10, 20)
    end

    it{is_expected.to include(10, 30)}
  end

  describe ({a: 10, b: 20}) do
    it 'can check for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
    end

    it{is_expected.to include(b: 4)}
  end

end
