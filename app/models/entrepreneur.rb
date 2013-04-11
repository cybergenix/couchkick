class Entrepreneur < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name,
   :image, :facebook, :twitter, :linkedin, :cv, :phone, :skype, :prefmethod, :tag_list, :usertype
  # attr_accessible :title, :body
  acts_as_taggable

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |entrepreneur|
      entrepreneur.provider = auth.provider
      entrepreneur.uid = auth.uid
      entrepreneur.email = auth.info.email
      entrepreneur.first_name = auth.info.first_name
      entrepreneur.last_name = auth.info.last_name
    end
  end

  def self.new_with_session(params, session)
  if session["devise.entrepreneur_attributes"]
    new(session["devise.entrepreneur_attributes"], without_protection: true) do |entrepreneur|
      entrepreneur.attributes = params
      entrepreneur.valid?
    end
  else
    super
  end
end

def password_required?
  super && provider.blank?
end

def update_with_password(params, *options)
  if encrypted_password.blank?
    update_attributes(params, *options)
  else
    super
  end
end


  has_many :opportunities
  has_many :entrepreneurstartups
  has_many :startups, :through => :entrepreneurstartups

    validates_attachment :image,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }



  has_attached_file :image, styles: { medium: "320x240#"}, :default_url => '../img/defaultprofile.jpg'
  has_attached_file :cv

  has_private_messages
end
