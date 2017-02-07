class AddFieldsToStands < ActiveRecord::Migration
  def change
    add_column :stands, :description, :text
    add_column :stands, :url, :string
    add_column :stands, :time, :string
    add_column :stands, :action, :string
    add_column :stands, :type_of_stand, :string
  end
end
