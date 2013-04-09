class Opportunity < ActiveRecord::Base
  attr_accessible :entrepreneur_id, :opportunity_type, :usertype, :tag_list, :text
  acts_as_taggable
  belongs_to :entrepreneur
  has_many :applicants, as: :commentable
end
