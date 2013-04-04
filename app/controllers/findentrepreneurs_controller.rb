class FindentrepreneursController < ApplicationController
  before_filter :authenticate_entrepreneur!, except: [:show]
  # GET /startups
  # GET /startups.json
  def index
    @findentrepreneurs = Findentrepreneur.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @findentrepreneurs }
    end
  end

  # GET /startups/1
  # GET /startups/1.json
  def show
    @findentrepreneur = Findentrepreneur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @findentrepreneur }
    end
  end

  # GET /startups/new
  # GET /startups/new.json
  def new
    @findentrepreneur = Findentrepreneur.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @findentrepreneur }
    end
  end

  # GET /startups/1/edit
  def edit
    @findentrepreneur = Findentrepreneur.find(params[:id])
  end

  # POST /startups
  # POST /startups.json
  def create
    @findentrepreneur = Findentrepreneur.new(params[:findentrepreneur])

    respond_to do |format|
      if @findentrepreneur.save
        format.html { redirect_to @findentrepreneur, notice: 'Opportunity was successfully created.' }
        format.json { render json: @findentrepreneur, status: :created, location: @findentrepreneur }
      else
        format.html { render action: "new" }
        format.json { render json: @findentrepreneur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /startups/1
  # PUT /startups/1.json
  def update
    @findentrepreneur = Findentrepreneur.find(params[:id])

    respond_to do |format|
      if @findentrepreneur.update_attributes(params[:findentrepreneur])
        format.html { redirect_to @findentrepreneur, notice: 'Opportunity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @findentrepreneur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startups/1
  # DELETE /startups/1.json
  def destroy
    @findentrepreneur = Findentrepreneur.find(params[:id])
    @findentrepreneur.destroy

    respond_to do |format|
      format.html { redirect_to findentrepreneurs_url }
      format.json { head :no_content }
    end
  end
end