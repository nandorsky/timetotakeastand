class AddStatusToStands < ActiveRecord::Migration
  def change
    add_column :stands, :status, :string
  end
end
