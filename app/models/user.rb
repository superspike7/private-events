class User < ApplicationRecord

  def self.authenticate(username)
    user = find_by_username(username)
    if user
      user
    else
      nil
    end
  end

end
