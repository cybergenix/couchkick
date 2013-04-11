class AddAdditionaloauthinfoToEntrepreneurs < ActiveRecord::Migration
  def change
  	add_column :entrepreneurs, :oauth_token, :string
    add_column :entrepreneurs, :oauth_expires_at, :datetime
  end
end
