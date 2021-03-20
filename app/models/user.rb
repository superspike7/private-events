class User < ApplicationRecord
  has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'

  def self.authenticate(username)
    user = find_by_username(username)
    if user
      user
    else
      nil
    end
  end

end
