class RemoveFriendListIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :friend_list_id, :integer
  end
end
