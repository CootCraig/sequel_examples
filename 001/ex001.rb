$LOAD_PATH << File.expand_path(File.dirname(__FILE__))
require 'dict_model.rb'
db = DictJsonSinatra::DbModel::DbFunctions.db_connection
dictRowClass = DictJsonSinatra::DbModel::DictRow
dictRow = dictRowClass.set_dataset db[:dict]
dictRow.each{|r| puts r.values}
# Output is:
#  {:key=>"A", :value=>"1", :creation_time=>"2010-11-28 17:46:22 -0700", :modification_time=>"2010-11-28 17:46:22 -0700"}
#  {:key=>"B", :value=>"2", :creation_time=>"2010-11-28 17:46:22 -0700", :modification_time=>"2010-11-28 17:46:22 -0700"}
#  => #<Sequel::SQLite::Dataset: "SELECT * FROM `dict`">

