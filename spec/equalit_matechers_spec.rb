RSpec.describe 'equality matechers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matecher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do   #eql is more strict to verify if the value is the same and type also has to be the same.
    it 'tests for the value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)

      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1,2,3] }
    let(:d) { [1,2,3] }
    let(:e) { c }

    it 'cares abnout obejct identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)

      expect(c).to equal(e)
      expect(c).to be(e)
      expect(c).not_to be(d)
      expect(c).not_to equal([1,2,3])
    end

  end


end
