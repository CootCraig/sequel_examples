require 'sequel'

# This is very clutzy, I don't have my Sequel groove yet.
# My thoughts are:
#   Put the code in a module.
#   Store away the database connection
#   Define the Sequel::Model subclass
module DictJsonSinatra
  module DbModel
    class DbFunctions
      @@db_connection_info = nil
      @@db_connection = nil
      class << self
        def set_db_connection(connection_info)
          @@db_connection_info = connection_info
          @@db_connection = Sequel.connect(@@db_connection_info)
          Sequel::Model.db = @@db_connection
        end
        def db_connection_info; return @@db_connection_info; end
        def db_connection; return @@db_connection; end
      end
    end
  end
end

DictJsonSinatra::DbModel::DbFunctions.set_db_connection('sqlite://dict.db')

module DictJsonSinatra
  module DbModel
    class DictRow < Sequel::Model
    end
  end
end
