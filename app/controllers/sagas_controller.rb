class SagasController < ApplicationController
  before_action :set_saga, only: [:show, :edit, :update, :destroy]

 # GET /sagas
 # GET /sagas.json
  def index
    @profile = Profile.find(params[:profile_id])
    @sagas = @profile.sagas
  end

  # GET /sagas/1
  # GET /sagas/1.json
  def show
    
      @profile = Profile.find(params[:profile_id])
      @saga = @profile.sagas.find(params[:id])
 
  end

    # GET /sagas/new
  def new
    
    @profile = Profile.find(params[:profile_id])
    @saga = @profile.sagas.build
  end

  # GET /sagas/1/edit
  def edit
    
    @profile = Profile.find(params[:profile_id])
    @saga = @profile.sagas.find(params[:id])
  end

  # POST /sagas
  # POST /sagas.json
  def create
    @profile = Profile.find(params[:profile_id])
    
    
    @saga = @profile.sagas.build(saga_params)
    
  if @saga.save
# Save the saga successfully
      redirect_to profile_saga_url(@profile ,  @saga)
   else
      render :action => "new"
  end
  end

  # PATCH/PUT /sagas/1
  # PATCH/PUT /sagas/1.json
  def update

    @profile = Profile.find(params[:profile_id])
    @saga = Saga.find(params[:id])
	
    if @saga.update_attributes(saga_params)
       # Save the review successfully
       redirect_to profile_saga_url(@profile, @saga)
    else
       render :action => "edit"
    end
  end

  # DELETE /sagas/1
  # DELETE /sagas/1.json
def destroy
   @profile = Profile.find(params[:profile_id])
   @saga = Saga.find(params[:id])
    
   @saga.destroy
   respond_to do |format|
   format.html { redirect_to profile_sagas_url }
   format.xml { head :ok }
   end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saga
      @saga = Saga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saga_params
      params.require(:saga).permit(:ImmunizationStatus, :Surgeries, :UnderlyingMedicalIllness, :Allergies, :SexuallyTransmittedDiseases)
    end
end
