First command: rspec --init
  adds .rspec 
  ensures spec_helper is run before other test files are run, it is also automatically imported into the other spec files

  spec_helper.rb has a lot of global configurations
  command to run a specific test on a particular line
  rspec ./spec/card_spec.rb:2

  I was seeing just green dots for passing tests, but I wanted to see the descriptions of what was passing. 

  add: --format documentation to .rspec file
  Thank you stack overflow! https://stackoverflow.com/questions/44913732/how-to-format-rspec-to-show-passing-on-default

  To run tests: rspec spec/implicit_subject_spec.rb