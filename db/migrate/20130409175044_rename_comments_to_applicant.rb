class RenameCommentsToApplicant < ActiveRecord::Migration
  def change
  	rename_table :comments, :applicants
  end
end
