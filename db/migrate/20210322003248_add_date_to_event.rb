class AddDateToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :schedule, :datetime
  end
end
