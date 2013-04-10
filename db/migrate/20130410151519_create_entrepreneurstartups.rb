class CreateEntrepreneurstartups < ActiveRecord::Migration
  def change
    create_table :entrepreneurstartups do |t|
      t.integer :entrepreneur_id
      t.integer :startup_id

      t.timestamps
    end
  end
end
