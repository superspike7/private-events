class RemoveColumnUsersIdFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :users_id
  end
end
