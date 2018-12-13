class User < ApplicationRecord

  def self.authenticate(email, password)
    if email == valid_user.email && password == valid_user.password
      return valid_user
    else
      return nil
    end
  end

end
