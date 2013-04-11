class OmniauthCallbacksController < ApplicationController
	def all
		entrepreneur = Entrepreneur.from_omniauth(request.env["omniauth.auth"])
		if entrepreneur.persisted?
			flash.notice = "Signed in!"
			sign_in_and_redirect entrepreneur
		else
			session["devise.entrepreneur_attributes"] = entrepreneur.attributes
			redirect_to new_entrepreneur_registration_url
		end
	end

	alias_method :facebook, :all
end
