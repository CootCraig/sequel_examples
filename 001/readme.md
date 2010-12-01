
Sequel Sqlite3 example
======================
    Written by Craig H. Anderson
    email: craig@coot.net
    twitter: @CootCraig

Setup
-----
Note I used ruby-1.9.2-p0. See the .rvmrc:
    rvm use ruby-1.9.2-p0@sequel_ex_001

And the default.gems file

Install the sqlite3 library needed by sqlite3-ruby

Install the gems: sequel, sqlite3-ruby

Migration commands and connection example
-----------------------------------------
* sequel.connect('sqlite://dict.db')
* sequel -m . 'sqlite://dict.db'
* sequel -m . -M 0 'sqlite://dict.db'

Run the example
---------------
$ sequel -m . 'sqlite://dict.db' # Run the migration to build a sqlite3 data base file
ruby ex001.rb

