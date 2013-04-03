class AddPrefmethodToEntrepreneur < ActiveRecord::Migration
  def change
    add_column :entrepreneurs, :prefmethod, :string
  end
end
