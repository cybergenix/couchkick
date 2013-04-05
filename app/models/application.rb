class Application < ActiveRecord::Base
  attr_accessible :entrepreneur_id, :findentrepreneur_id, :message
  belongs_to :findentrepreneur 
  belongs_to :entrepreneur
end
