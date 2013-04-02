class AddSocialToEntrepreneur < ActiveRecord::Migration
  def change
    add_column :entrepreneurs, :facebook, :string
    add_column :entrepreneurs, :twitter, :string
    add_column :entrepreneurs, :linkedin, :string
  end
end
