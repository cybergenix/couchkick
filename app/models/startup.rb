class Startup < ActiveRecord::Base
  attr_accessible :description, :founded, :link1, :link2, :link3, :location, :name, :stage, :logo
  validates_attachment :logo,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }
  has_attached_file :logo, styles: { medium: "400x240>"}
end
