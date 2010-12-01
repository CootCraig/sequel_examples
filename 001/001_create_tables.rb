# sequel.connect('sqlite://dict.db')
# sequel -m . 'sqlite://dict.db'
# sequel -m . -M 0 'sqlite://dict.db'

require "rubygems"
require "sequel"

Sequel.migration do
  up do
    create_table(:dict) do
      String :key, :primary_key => true
      String :value
      String :creation_time
      String :modification_time
    end
    now = Time.now.to_s
    DB[:dict].insert(
      :key => 'A',
      :value => '1',
      :creation_time => now,
      :modification_time => now )
    DB[:dict].insert(
      :key => 'B',
      :value => '2',
      :creation_time => now,
      :modification_time => now )
  end
  down do
    drop_table(:dict)
  end
end
