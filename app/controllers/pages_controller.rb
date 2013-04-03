class PagesController < ApplicationController
  def home
    if entrepreneur_signed_in?
       if current_entrepreneur.usertype == nil
         redirect_to '/entrepreneurs/edit'
       end
    end
  end

  def about
  end

  def faq
  end

  def terms
  end

  def privacy
  end

end
