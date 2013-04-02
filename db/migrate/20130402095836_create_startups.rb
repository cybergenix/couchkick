class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :stage
      t.date :founded
      t.string :link1
      t.string :link2
      t.string :link3

      t.timestamps
    end
  end
end
