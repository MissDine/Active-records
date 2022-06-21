require "sqlite3"

# Establishing a connection to our database
db = SQLite3::Database.new("db/data.db")
# Getting ccess to our data
puts db.execute("SELECT * FROM Users")