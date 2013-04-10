class Entrepreneurstartup < ActiveRecord::Base
  attr_accessible :entrepreneur_id, :startup_id, :position
  belongs_to :entrepreneur 
  belongs_to :startup 
end
