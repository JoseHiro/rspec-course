RSpec.describe Array do

  it "should have an elements" do
    puts subject
    puts subject.length
    expect(subject.class).to eq(Array)
  end

end
