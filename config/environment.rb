require "sqlite3"
require "./lib/files.rb"

# Establishing a connection to our database
# db = SQLite3::Database.new("db/data.db")
# # Getting ccess to our data
# puts db.execute("SELECT * FROM Users")

# Creating a new user /object/instance
Users.new(fullname: "Marube", username: "Rue", age: 1)