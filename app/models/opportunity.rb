class Opportunity < ActiveRecord::Base
  attr_accessible :entrepreneur_id, :opportunity_type, :usertype
  belongs_to :entrepreneur
end
