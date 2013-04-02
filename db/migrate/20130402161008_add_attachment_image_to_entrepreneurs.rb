class AddAttachmentImageToEntrepreneurs < ActiveRecord::Migration
  def self.up
    change_table :entrepreneurs do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :entrepreneurs, :image
  end
end
