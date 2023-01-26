RSpec.describe Array do

  subject(:sally) do
    [1,2]
  end

  it 'subject has length 2' do
    sally.pop()
    puts sally
    puts subject 
    expect(sally.length).to eq(1)
  end

  it 'sally is same to the original array' do
    puts sally
    puts "--------"
    puts subject
    expect(sally == subject).to eq(true)
  end


end
