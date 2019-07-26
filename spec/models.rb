require 'pry'
require "active_record"
class Book < ActiveRecord::Base
end
base = { "adapter"=> "sqlite3" }
databases = {
    "default" => base.merge("database" => "default.sqlite3")
}
ActiveRecord::Base.configurations = databases
ActiveRecord::Base.establish_connection(:default)