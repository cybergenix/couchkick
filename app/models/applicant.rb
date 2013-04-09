class Applicant < ActiveRecord::Base
  attr_accessible :content, :entrepreneur_id
  belongs_to :commentable, polymorphic: true
end
