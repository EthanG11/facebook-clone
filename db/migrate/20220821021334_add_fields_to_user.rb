class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users,:age,:int
    add_column :users, :college, :string
    add_column :users, :relationship_status, :string
    



  end
end
