class RemoveuserBIdFromFriendLists < ActiveRecord::Migration[7.0]
  def change
    remove_column :friend_lists, :user_b_id

  end
end
