require 'pry'
require "active_record"
class Book < ActiveRecord::Base
end
base = { adapter: 'sqlite3' }
databases = {
    'default' => base.merge(database: 'default.sqlite3')
}
binding.pry
ActiveRecord::Base.configurations = { 'test' => databases }
ActiveRecord::Base.establish_connection(:default)