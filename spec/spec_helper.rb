require "bundler/setup"
require "log_connection_name"
require "models"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:suite) do
    Book.connection.execute('CREATE TABLE books (id integer primary key autoincrement)')
  end

  config.after(:suite) do
    ActiveRecord::Base.configurations.each_value do |c|
      FileUtils.rm_f(c["database"])
    end
  end
end
