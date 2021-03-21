class ChangeTableNameEventAttendance < ActiveRecord::Migration[6.1]
  def change
    rename_table :event_attendance, :event_attendings
  end
end
