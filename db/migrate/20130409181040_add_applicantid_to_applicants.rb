class AddApplicantidToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :applicant_id, :integer
  end
end
