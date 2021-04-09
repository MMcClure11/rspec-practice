# Questions for this assignment
# 1. What is an alternate way to write the assertion below?
# expect({}.empty?).to be(true)
expect({}).to be_empty
# 2. Write an assertion that validates that every element in the array [10, 20, 30] is even.
expect([10, 20, 30]).to all(be_even)
# 3. Write an assertion that validates that every element in the array [0, 1, 2] is greater than or equal to 0.
expect([0, 1, 2]).to all(be >= 0)
# 4. Which of the values below are truthy and which are falsy? Submit your answer as two organized lists.
truthy = ["hello", 0, -10, [], 99.99, :hello, true, [1, 2, 3]]
falsey = [false, nil]
 