class AddUserIdToStands < ActiveRecord::Migration
  def change
    add_column :stands, :user_id, :integer
    add_index :stands, :user_id
  end
end
