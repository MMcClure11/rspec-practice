RSpec.describe 'math calculations' do 
  it 'does basic math' do 
    expect(3+4).to eq(7)
    expect(2*15).to eq(30)
    expect(9/3).to eq(3)
    expect(5-4).to eq(1)
  end
end