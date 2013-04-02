class EntrepreneursController < ApplicationController
  def index
  	@entrepreneurs = Entrepreneur.order("created_at desc").page(params[:page]).per_page(10)
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

