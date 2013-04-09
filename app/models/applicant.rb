class Applicant < ActiveRecord::Base
  attr_accessible :content
  belongs_to :commentable, polymorphic: true
end
