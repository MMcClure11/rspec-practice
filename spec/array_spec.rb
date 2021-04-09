# Assignment Number 5

RSpec.describe Array do 

  it 'should start off empty' do 
    expect(subject.length).to eq(0)
    subject.push("Some value")
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do 
    expect(subject.length).to eq(0)
  end
end

# Question 1. What does the subject helper method return?
# An instance of the class under test.
# Question 2. Why is it better to pass a class argument to the describe method instead of a string with the class name?
# With a class argument, RSpec is able to instantiate an instance of the class and make it lazily available via the subject method.