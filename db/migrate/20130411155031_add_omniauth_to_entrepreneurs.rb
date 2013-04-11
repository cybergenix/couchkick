class AddOmniauthToEntrepreneurs < ActiveRecord::Migration
  def change
    add_column :entrepreneurs, :provider, :string
    add_column :entrepreneurs, :uid, :string
  end
end
