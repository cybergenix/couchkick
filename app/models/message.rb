class Message < ActiveRecord::Base

  is_private_message :class_name => "Entrepreneur"
  
  # The :to accessor is used by the scaffolding,
  # uncomment it if using it or you can remove it if not
  attr_accessor :to
  attr_accessible :subject, :to, :body
  
end