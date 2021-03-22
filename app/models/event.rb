class Event < ApplicationRecord
  belongs_to :creator, foreign_key: 'creator_id', class_name: 'User'
  has_many :event_attendings, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendings, source: :event_attendee 

  scope :upcoming, ->{ where('schedule > ?', DateTime.now ) }
  scope :past, ->{ where('schedule < ?', DateTime.now ) }
end
