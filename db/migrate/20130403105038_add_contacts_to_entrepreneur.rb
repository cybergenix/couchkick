class AddContactsToEntrepreneur < ActiveRecord::Migration
  def change
    add_column :entrepreneurs, :phone, :string
    add_column :entrepreneurs, :skype, :string
  end
end
