class AddJoinTableEventAttendance < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendance do |t|
      t.integer :attended_event_id
      t.integer :event_attendee_id

      t.timestamps
    end
  end
end
