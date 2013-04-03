class Entrepreneur < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name,
   :image, :facebook, :twitter, :linkedin, :cv, :phone, :skype, :prefmethod, :tag_list, :usertype
  # attr_accessible :title, :body
  acts_as_taggable

  

    validates_attachment :image,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }



  has_attached_file :image, styles: { medium: "320x240>"}, :default_url => '../img/defaultprofile.jpg'
  has_attached_file :cv
end
