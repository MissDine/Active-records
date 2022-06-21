require "sqlite3"

# Creating a connection/access to the database
db = sqlite3::Database.new("db/database.db")