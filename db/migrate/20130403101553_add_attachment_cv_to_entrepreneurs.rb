class AddAttachmentCvToEntrepreneurs < ActiveRecord::Migration
  def self.up
    change_table :entrepreneurs do |t|
      t.attachment :cv
    end
  end

  def self.down
    drop_attached_file :entrepreneurs, :cv
  end
end
