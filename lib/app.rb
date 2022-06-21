class User < Record
    attr_accessor :fullname, :username, :age
    # @@all = []

    def initialize(fullname:, username:, age:)
        @fullname = fullname
        @username = username
        @age = age
        # @@all << self
    end  
    
    def self.all
        @@all
    end    
    
    def save
        DB.execute("INSERT INTO User(fullname, username, age) VALUES(?, ?, ?)", self.fullname, self.username, self.age)
    end 
# Creating a table in our database
    def self.create_table
        sql = <<-SQL
        CREATE TABLE IF NOT EXISTS User(
            id INTEGER PRIMARY KEY AUTOINCREMENT, fullname TEXT, username TEXT, age INTEGER
        )
        SQL
        DB.execute(sql)
    end 
    
    # Drop table
    def self.drop_table
        DB.execute("DROP TABLE IF EXISTS Users")
    end  
    
    # Setting table so as to be Inserting data into our table
    def self.reset_table
        self.drop_table
        self.create_table
    end    
    
    def self.priiint
        puts DB.execute("SELECT * FROM Users")
    end    
    def self.age_between_20_and_25
        sql = <<-SQL
        SELECT * FROM Users WHERE age BETWEEN 20 and 25
        SQL
        DB.execute(sql)
    end 
    
    # Updating
    def update
        sql = "Update User SET fullname =?, username =?, age = ? WHERE id = ?"
        DB.execute(sql,self.fullname, self.username, self.age, self,id)
    end    
 
end
