require "pry"
class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save.to_i
    add_user(self)
  end

  def add_user(user)
    @@all_users << @user
  end   
  
  def self .all
    print @@all_users
  end  

  def self.find_by_email(email)
    @@all_users.each do |user|

      if user.email == email
        return user.age
      end
    end
end
end

binding.pry
puts "end of file"