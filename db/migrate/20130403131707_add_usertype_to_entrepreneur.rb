class AddUsertypeToEntrepreneur < ActiveRecord::Migration
  def change
    add_column :entrepreneurs, :usertype, :string
  end
end
