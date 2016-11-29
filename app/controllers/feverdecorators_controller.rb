

require '/home/ubuntu/workspace/Hippocrates/lib/tasks/fever_decorator'



class FeverdecoratorsController < ApplicationController
  before_action :set_feverdecorator, only: [:show, :edit, :update, :destroy]

  # GET /feverdecorators
  # GET /feverdecorators.json
  def index
    @feverdecorators = Feverdecorator.all
  end

  # GET /feverdecorators/1
  # GET /feverdecorators/1.json
  def show
  end

  # GET /feverdecorators/new
  def new
    @feverdecorator = Feverdecorator.new
  end

  # GET /feverdecorators/1/edit
  def edit
  end

  # POST /feverdecorators
  # POST /feverdecorators.json
  
def create

      @feverdecorator = Feverdecorator.new()
      @feverdecorator.name = params[:feverdecorator][:name]
      @feverdecorator.temperature = params[:feverdecorator][:temperature]

      oFever = BasicFever.new(500, @feverdecorator.temperature)
      # add the extra features to fever
      
      if params[:feverdecorator][:continiousfever].to_s.length > 0 then
      oFever = ContinuousFever.new(oFever)
      end
      
      
      if params[:feverdecorator][:remittentfever].to_s.length > 0 then
      oFever = RemittentFever.new(oFever)
      end


      if params[:feverdecorator][:intermittentfever].to_s.length > 0 then
      oFever = IntermittentFever.new(oFever)
      end
      
      if params[:feverdecorator][:septicfever].to_s.length > 0 then
      oFever = SepticFever.new(oFever)
      end
      
      if params[:feverdecorator][:pelebsteinfever].to_s.length > 0 then
      oFever = PelEbsteinFever.new(oFever)
      end
      
      if params[:feverdecorator][:lowgradefever].to_s.length > 0 then
      oFever = LowGradeFever.new(oFever)
      end
      
      if params[:feverdecorator][:ladderfever].to_s.length > 0 then
      oFever = LadderFever.new(oFever)
      end
      
      if params[:feverdecorator][:relapsingfever].to_s.length > 0 then
         oFever = RelapsingFever.new(oFever)
      end
      
      if params[:feverdecorator][:tertianfever].to_s.length > 0 then
          oFever = TertianFever.new(oFever)
      end

      if params[:feverdecorator][:inversefever].to_s.length > 0 then
         oFever = InverseFever.new(oFever)
      end

      if params[:feverdecorator][:nightsweatfever].to_s.length > 0 then
         oFever = NightSweatFever.new(oFever)
      end
      
      if params[:feverdecorator][:rashfever].to_s.length > 0 then
         oFever = RashFever.new(oFever)
      end
      
      if params[:feverdecorator][:throatpainfever].to_s.length > 0 then
         oFever = ThroatPainFever.new(oFever)
      end
      
      if params[:feverdecorator][:HyperPyrexiaFever].to_s.length > 0 then
         oFever = HyperPyrexiaFever.new(oFever)
      end

      ## populate the description and fees field
      
      @feverdecorator.description = oFever.details
      @feverdecorator.fees = oFever.fees
      
      respond_to do |format|
      if @feverdecorator.save
            format.html { redirect_to @feverdecorator, notice: 'Diagonistic was successfully created.'}
            format.json { render :show, status: :created, location: @feverdecorator }
            else
            format.html { render :new }
            format.json { render json: @feverdecorator.errors, status: :unprocessable_entity }
      end
            end
end

  # PATCH/PUT /feverdecorators/1
  # PATCH/PUT /feverdecorators/1.json
  def update
    respond_to do |format|
      if @feverdecorator.update(feverdecorator_params)
        format.html { redirect_to @feverdecorator, notice: 'Feverdecorator was successfully updated.' }
        format.json { render :show, status: :ok, location: @feverdecorator }
      else
        format.html { render :edit }
        format.json { render json: @feverdecorator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feverdecorators/1
  # DELETE /feverdecorators/1.json
  def destroy
    @feverdecorator.destroy
    respond_to do |format|
      format.html { redirect_to feverdecorators_url, notice: 'Feverdecorator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feverdecorator
      @feverdecorator = Feverdecorator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feverdecorator_params
      params.require(:feverdecorator).permit(:name, :temperature, :description, :fees)
    end
end
