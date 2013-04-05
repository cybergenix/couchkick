class AddEntrepreneuridToFindentrepreneur < ActiveRecord::Migration
  def change
    add_column :findentrepreneurs, :entrepreneur_id, :integer
  end
end
