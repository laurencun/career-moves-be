RSpec.configure do |config|

  #any thing in the db at begin of test suite is cleared
    config.before(:suite) do
      DatabaseCleaner.clean_with :truncation
    end

  #before non-js test, create data then rollback transaction (quicker than truncating database)
    config.before(:each) do
      DatabaseCleaner.strategy = :transaction
    end

    config.before(:each, js: true) do
      DatabaseCleaner.strategy = :truncation
    end

    #before each test start cleaner
    config.before(:each) do
      DatabaseCleaner.start
    end

    #after each test clear database
    config.after(:each) do
      DatabaseCleaner.clean
    end

end