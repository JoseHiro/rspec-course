class ProgrammingLanguage

  def initialize(name = 'Ruby')
    @name = name
  end

end


RSpec.describe ProgrammingLanguage do
  let(:language) {ProgrammingLanguage.new('Python')}

  if 'Should store the name of the language' do
    expectr(language).to eq('Python')
  end

  context 'with no argument' do

    let(:language) { ProgrammingLanguage.new }
    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end
