# Questions for this assignment
# 1. By default, what will subject equal?
  # subject is a new instance of the class in the test
  # answer: An instance of the class under test.
# 2. How do you define a custom subject? Provide a code example.
  # subject(:bob) do 
  #   { a: 1, b: 2}
  # end
  # answer: Invoke the subject method and provide a Ruby block. The final evaluation of the block will be the value of subject whenever it's used in an example.
  # subject { "hello" }
# 3. How does the described_class helper method work? What is the advantage of using it over writing the class name out?
   # you can write described_class.new to instantiate a new instance of the class that is passed into the describe block
   # this way if the class name changes, you don't have to find it everywhere in your spec file to change it
   # ANSWER: described_class dynamically references the class being tested (the one passed as an argument to the top-level describe method). The advantage is that, if the class name changes, the rest of the spec does not have to change.
# 4. Write an RSpec test for an array with 2 elements.
  # Declare the subject to be [1, 2].
  # Write an example that uses expect(subject) to test whether the array is equal to [1, 2].
  # Write an example that uses the one-liner is_expected syntax.
  # Which do you prefer?
    # I actually prefer the first primarily because I understand the syntax better and know what the outcome will be.
    # Although it is nice that RSpec generates the message
RSpec.describe 'some array' do 
  subject { [1, 2] }
  it 'should be an array with 2 elements' do 
    expect(subject).to eq([1, 2])
  end

  it { is_expected.to eq([1, 2]) }
end

# 5. What's the difference between include_examples and include_context?
  # include_examples are tests written in a way that you can run them in multiple settings; extracting common behavior between objects
  # include_context is any setup code that you can use to prepare a test case. This allows you to include test helper methods or prepare for the tests to run.
  # ANSWER: The include_examples method injects predefined examples into an example group.
  # ANSWER: The include_context method injects context (i.e. before blocks, instance variables, helper methods, let variables) into an example group.
  # ANSWER: Both remove duplication across tests.