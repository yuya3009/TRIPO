repuire 'database_cleaner'

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  
   DatabaseCleaner.stategy = :truncation

  # RSpecの実行前に1度、実行
  config.before(:suite) do
    DatabaseCleaner.clean
  end

  # rspecでいうexample、turnipでいうシナリオが終わるごとに実行
  config.before(:each) do
    DatabaseCleaner.clean
  end  

  # 最後に1度、実行
  config.after(:suite) do
    DatabaseCleaner.clean
  end
end


  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end


  config.shared_context_metadata_behavior = :apply_to_host_groups


end
