class EntrepreneursController < ApplicationController
  before_filter :authenticate_entrepreneur!, except: [:show]
  def index  
  	@entrepreneurs = Entrepreneur.all 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entrepreneurs }
    end
  end

  def show
  	 @entrepreneur = Entrepreneur.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entrepreneur }
    end
  end

  
end

