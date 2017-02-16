class AddOrgToStands < ActiveRecord::Migration
  def change
    add_column :stands, :org_description, :text
    add_column :stands, :org_name, :string
  end
end
