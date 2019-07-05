require "active_record"
class Book < ActiveRecord::Base
end
databases = {
    'default' => { adapter: 'sqlite3', database: 'default.sqlite3' }
}
binding.pry
ActiveRecord::Base.configurations = { 'test' => databases }
ActiveRecord::Base.establish_connection(:default)