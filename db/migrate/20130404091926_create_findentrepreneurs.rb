class CreateFindentrepreneurs < ActiveRecord::Migration
  def change
    create_table :findentrepreneurs do |t|
      t.string :whatfor
      t.string :location
      t.string :usertype

      t.timestamps
    end
  end
end
