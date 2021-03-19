class AddEventsAndUserReference < ActiveRecord::Migration[6.1]
  def change
    create_table :events_users, id: false do |t|
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
