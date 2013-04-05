class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :findentrepreneur_id
      t.integer :entrepreneur_id
      t.text :message

      t.timestamps
    end
  end
end
