First command: rspec --init
  adds .rspec 
  ensures spec_helper is run before other test files are run, it is also automatically imported into the other spec files

  spec_helper.rb has a lot of global configurations
  command to run a specific test on a particular line
  rspec ./spec/card_spec.rb:2