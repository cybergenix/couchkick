class AddNameToEntrepreneur < ActiveRecord::Migration
  def change
    add_column :entrepreneurs, :first_name, :string
    add_column :entrepreneurs, :last_name, :string
  end
end
