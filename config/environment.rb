require "sqlite3"
require "./lib/files.rb"

# Establishing a connection to our database
DB = SQLite3::Database.new("db/data.db")
# # Getting ccess to our data
# puts DB.execute("SELECT * FROM Users")

# Creating a new user /object/instance

Users.reset_table

user1 = User.new(fullname: "Marube", username: "Rue", age: 1).save
user2 = User.new(fullname: "Enid", username: "Dine", age: 25).save
user3 = User.new(fullname: "Norbert", username: "Bizzoh", age: 20).save
user4 = User.new(fullname: "Marube", username: "Moh", age: 3).save
# Users.priiint
# puts Users.age_between_20_and_25
user2.fullname = "mama"
user2.update

# puts DB.execute("SELECT * FROM User")
puts User.table_name