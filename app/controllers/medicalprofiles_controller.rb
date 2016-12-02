class MedicalprofilesController < ApplicationController
  
     before_filter :authenticate_user!
     before_filter :ensure_admin, :only => [:edit, :destroy]
     before_action :set_medicalprofile, only: [:show, :edit, :update, :destroy]

  # GET /medicalprofiles
  # GET /medicalprofiles.json
  def ensure_admin
    unless current_user && current_user.admin?
    render :text => "Access Error Message", :status => :unauthorized
    end
  end

  def index
    
    @user = current_user
    @medicalprofiles = Medicalprofile.all
  end

  # GET /medicalprofiles/1
  # GET /medicalprofiles/1.json
  def show

     #@user = current_user
  
  end

  # GET /medicalprofiles/new
  def new
      @medicalprofile = Medicalprofile.new

  end

  # GET /medicalprofiles/1/edit
  def edit
  end

  # POST /medicalprofiles
  # POST /medicalprofiles.json
  def create
    @medicalprofile = Medicalprofile.new(medicalprofile_params)

    respond_to do |format|
      if @medicalprofile.save
        format.html { redirect_to @medicalprofile, notice: 'Medicalprofile was successfully created.' }
        format.json { render :show, status: :created, location: @medicalprofile }
      else
        format.html { render :new }
        format.json { render json: @medicalprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicalprofiles/1
  # PATCH/PUT /medicalprofiles/1.json
  def update
    respond_to do |format|
      if @medicalprofile.update(medicalprofile_params)
        format.html { redirect_to @medicalprofile, notice: 'Medicalprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicalprofile }
      else
        format.html { render :edit }
        format.json { render json: @medicalprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicalprofiles/1
  # DELETE /medicalprofiles/1.json
  def destroy
    @medicalprofile.destroy
    respond_to do |format|
      format.html { redirect_to medicalprofiles_url, notice: 'Medicalprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicalprofile
      @medicalprofile = Medicalprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicalprofile_params
      params.require(:medicalprofile).permit(:ImmunizationStatus, :Surgeries, :UnderlyingMedicalIllness, :Allergies, :SexuallyTransmittedDiseases, :user_id)
    end
end
