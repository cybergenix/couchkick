class Startup < ActiveRecord::Base
  attr_accessible :description, :founded, :link1, :link2, :link3, :location, :name, :stage, :logo, :entrepreneur_ids
  validates_attachment :logo,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }
  has_attached_file :logo, styles: { medium: "500x247#"}, :default_url => '../img/defaultlogo.jpg'

  has_many :entrepreneurstartups
  has_many :entrepreneurs, :through => :entrepreneurstartups
end
