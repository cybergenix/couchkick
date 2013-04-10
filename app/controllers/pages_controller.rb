class PagesController < ApplicationController
  before_filter :authenticate_entrepreneur!, except: [:home]
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

  def opportunities
    @opportunities = Opportunity.all
  end

end