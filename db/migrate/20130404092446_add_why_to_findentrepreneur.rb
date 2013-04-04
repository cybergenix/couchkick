class AddWhyToFindentrepreneur < ActiveRecord::Migration
  def change
    add_column :findentrepreneurs, :why, :text
  end
end
