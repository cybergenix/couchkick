class Proposal < ActiveRecord::Base
  attr_accessible :findentrepreneur_id, :message
  belongs_to :findentrepreneur
end
