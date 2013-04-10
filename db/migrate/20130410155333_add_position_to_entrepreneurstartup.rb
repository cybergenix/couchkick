class AddPositionToEntrepreneurstartup < ActiveRecord::Migration
  def change
    add_column :entrepreneurstartups, :position, :string
  end
end
