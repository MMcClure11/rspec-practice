RSpec.describe 'nested hooks' do 
  # runs once and first
  before(:context) do 
    puts 'OUTER Before context'
  end
  # runs second
  before(:example) do 
    puts 'OUTER Before example'
  end

  it 'does basic math' do 
    expect(1 + 1).to eq(2)
  end
  #nested context
  context 'with condition A' do 
    #runs once
    before(:context) do 
      puts 'INNER Before context'
    end

    before(:example) do 
      puts 'INNER Before example'
    end
    #does outer example, then inner example
    it 'does basic math' do 
      expect(1 + 1).to eq(2)
    end
    #runs outer example, then inner example
    it 'does subtraction as well' do 
      expect(2 - 1).to eq(1)
    end
  end
end