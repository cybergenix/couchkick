class ProposalsController < ApplicationController
  before_filter :findthatguy
  # GET /startups
  # GET /startups.json
  def index
    @proposals = Proposal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proposals }
    end
  end

  # GET /startups/1
  # GET /startups/1.json
  def show
    @proposal = Proposal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proposal }
    end
  end

  # GET /startups/new
  # GET /startups/new.json
  def new
    
    @proposal = @findwhatguy.proposals.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proposal }
    end
  end

  # GET /startups/1/edit
  def edit
    @proposal = Proposal.find(params[:id])
  end

  # POST /proposal
  # POST /proposal.json
  def create
    @proposal = @findentrepreneurs.proposals.new(params[:proposal])

    respond_to do |format|
      if @proposal.save
        format.html { redirect_to @proposal, notice: 'Proposal was successfully created.' }
        format.json { render json: @proposal, status: :created, location: @proposal }
      else
        format.html { render action: "new" }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /startups/1
  # PUT /startups/1.json
  def update
    @proposal = Proposal.find(params[:id])

    respond_to do |format|
      if @proposal.update_attributes(params[:proposal])
        format.html { redirect_to @proposal, notice: 'Startup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startups/1
  # DELETE /startups/1.json
  def destroy
    @proposal = Proposal.find(params[:id])
    @proposal.destroy

    respond_to do |format|
      format.html { redirect_to startups_url }
      format.json { head :no_content }
    end
  end

  private
  def findthatguy
    @findwhatguy = Findentrepreneur.find(params[:findentrepreneur_id])
  end
end
