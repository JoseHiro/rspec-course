class ProfessionalWrestler
  attr_reader :name, :finishing_name
  def initialize(name, finishing_name)
    @name = name
    @finishing_name = finishing_name
  end
end

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Stone Cold Steve Austin', 'Stunner') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin')
    end

    it{is_expected.to have_attributes(name: 'Stone Cold Steve Austin')}
  end
end
