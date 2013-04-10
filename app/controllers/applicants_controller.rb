class ApplicantsController < ApplicationController
  before_filter :authenticate_entrepreneur!
  before_filter :getentrepreneur
	before_filter :getopportunity

  def getentrepreneur
    @entrepreneur = Entrepreneur.find(params[:entrepreneur_id])
  end
	
	def getopportunity
		@opportunity = @entrepreneur.opportunities.find(params[:opportunity_id])
	end

  def index
  	@applicants = @opportunity.applicants
  end

  def new
    @applicant = @opportunity.applicants.new
  end

  def create

    @applicant = @opportunity.applicants.new(params[:applicant])
    @applicant.entrepreneur_id = current_entrepreneur.id
    respond_to do |format|
      if @applicant.save
        format.html { redirect_to [@entrepreneur, @opportunity], notice: 'Application was successfully created.' }
        format.json { render json: [@entrepreneur, @opportunity], status: :created, location: @applicant }
      else
        format.html { render action: "new" }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end
end