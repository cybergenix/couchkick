class AddAcceptedToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :accepted, :boolean
  end
end
