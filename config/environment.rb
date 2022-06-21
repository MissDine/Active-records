require "sqlite3"
require "./lib/files.rb"

# Establishing a connection to our database
DB = SQLite3::Database.new("db/data.db")
# Getting ccess to our data
puts DB.execute("SELECT * FROM Users")