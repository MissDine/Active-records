class Users
    attr_accessor : fullname, :username, :age
    @@all = []

    def initialize(fullname, username, age)
        @fullname = fullname
        @username = username
        @age = age
    end   
    
    def save
        db.execute("SELECT * FROM Users")
    end    

end
