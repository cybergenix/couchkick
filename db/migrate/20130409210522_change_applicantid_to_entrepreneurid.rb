class ChangeApplicantidToEntrepreneurid < ActiveRecord::Migration
  def change
  	rename_column :applicants, :applicant_id, :entrepreneur_id
  end
end
