class User < ApplicationRecord
  has_and_belongs_to_many :events

  def self.authenticate(username)
    user = find_by_username(username)
    if user
      user
    else
      nil
    end
  end

end
