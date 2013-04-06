class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :opportunity_type
      t.string :usertype
      t.integer :entrepreneur_id

      t.timestamps
    end
  end
end
