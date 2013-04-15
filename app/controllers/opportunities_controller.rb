class OpportunitiesController < ApplicationController
  before_filter :authenticate_entrepreneur!, except: [:show]
  before_filter :get_entrepreneur
  before_filter :get_current_entrepreneur
  # GET /opportunities
  # GET /opportunities.json

  def get_entrepreneur
  	@entrepreneur = Entrepreneur.find(params[:entrepreneur_id])
  end

  def get_current_entrepreneur
    @currententrepreneur = current_entrepreneur
  end

  def index
    @opportunities = @entrepreneur.opportunities

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @opportunity }
    end
  end

  # GET /opportunities/1
  # GET /opportunities/1.json
  def show
    @opportunity = @entrepreneur.opportunities.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @opportunity }
    end
  end

  # GET /opportunities/new
  # GET /opportunities/new.json
  def new
    @opportunity = @entrepreneur.opportunities.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @opportunity }
    end
  end

  # GET /opportunities/1/edit
  def edit
    @opportunity = @entrepreneur.opportunities.find(params[:id])
  end

  # POST /startups
  # POST /startups.json
  def create
    @opportunity = @entrepreneur.opportunities.new(params[:opportunity])

    respond_to do |format|
      if @opportunity.save
        format.html { redirect_to [@entrepreneur, @opportunity], notice: 'Opportunity was successfully created.' }
        format.json { render json: [@entrepreneur, @opportunity], status: :created, location: @opportunity }
      else
        format.html { render action: "new" }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /startups/1
  # PUT /startups/1.json
  def update
    @opportunity = @entrepreneur.opportunities.find(params[:id])

    respond_to do |format|
      if @opportunity.update_attributes(params[:opportunity])
        format.html { redirect_to [@entrepreneur, @opportunity], notice: 'Opportunity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @opportunity.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /startups/1
  # DELETE /startups/1.json
  def destroy
    @opportunity = @entrepreneur.opportunities.find(params[:id])
    @opportunity.destroy

    respond_to do |format|
      format.html { redirect_to [@entrepreneur, @opportunity]}
      format.json { head :no_content }
    end
  end
end
