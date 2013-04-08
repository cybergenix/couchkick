class AddInfoToOpportunity < ActiveRecord::Migration
  def change
    add_column :opportunities, :info, :text
  end
end
