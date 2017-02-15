class AddAttachmentImageToStands < ActiveRecord::Migration
  def self.up
    change_table :stands do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :stands, :image
  end
end
