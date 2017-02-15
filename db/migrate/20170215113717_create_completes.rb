class CreateCompletes < ActiveRecord::Migration
  def change
    create_table :completes do |t|
      t.text :comment
      t.references :stand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
