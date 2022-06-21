class Users
    attr_accessor :fullname, :username, :age
    @@all = []

    def initialize(fullname:, username:, age:)
        @fullname = fullname
        @username = username
        @age = age
        @@all << self
    end  
    
    def self.all
        @@all
    end    
    
    def save
        DB.execute("INSERT INTO Users(fullname, username, age) VALUES(?, ?, ?)", self.fullname, self.username, self.age)
    end 
    
    def self.priiint
        puts DB.execute("SELECT * FROM Users")
    end    

end
