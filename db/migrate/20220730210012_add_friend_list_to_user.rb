class AddFriendListToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :friend_list, null: false, foreign_key: true
  end
end
