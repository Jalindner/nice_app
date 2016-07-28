# # in User model

# def password
#   @password ||= BCrypt::Password.new(password_hash)
# end

# def password=(new_password)
#   @password = BCrypt::Password.create(new_password)
#   self.password_hash = @password
# end


# def authenticate(password)
#   return true if self.password == password
# end


# def self.authentication(username, password_attempt)
#   if user = User.find_by(username: username)
#     return user if user.password == password_attempt
#   end
#   return nil
# end

