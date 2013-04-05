class Findentrepreneur < ActiveRecord::Base
  attr_accessible :location, :usertype, :whatfor, :tag_list, :why, :entrepreneur_id
  acts_as_taggable

  belongs_to :entrepreneur
end
