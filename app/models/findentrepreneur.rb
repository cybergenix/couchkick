class Findentrepreneur < ActiveRecord::Base
  attr_accessible :location, :usertype, :whatfor, :tag_list, :why
  acts_as_taggable
end
