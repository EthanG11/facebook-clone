class AddFriendIdToFriendLists < ActiveRecord::Migration[7.0]
  def change
    add_column :friend_lists, :friend_id, :integer
  end
end
