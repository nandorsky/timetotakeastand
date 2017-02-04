class CreateStands < ActiveRecord::Migration
  def change
    create_table :stands do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
