class Friendship < ActiveRecord::Base
  attr_accessible :entrepreneur_id, :friend_id

  belongs_to :entrepreneur 
  belongs_to :friend, :class_name => "Entrepreneur"
end
