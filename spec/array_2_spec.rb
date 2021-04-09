RSpec.describe Array do 

  subject(:sally) { ["element 1", "element 2"] }

  it 'has two elements' do 
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do 
    expect(sally).to eq(["element 1", "element 2"])
  end
end