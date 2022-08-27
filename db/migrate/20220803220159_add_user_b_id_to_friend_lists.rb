class AddUserBIdToFriendLists < ActiveRecord::Migration[7.0]
  def change
    add_column :friend_lists, :user_b_id, :integer
  end
end
