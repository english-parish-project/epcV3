class ChurchesController < ApiController
  before_action :set_church, only: [:show, :update, :destroy]

  # GET /churches
  def index
    @churches = Church.all

    render json: @churches
  end

  # GET /churches/1
  def show
    render json: @church
  end

  # POST /churches
  def create
    @church = Church.new(church_params)

    if @church.save
      render json: @church, status: :created, location: @church
    else
      render json: @church.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /churches/1
  def update
    if @church.update(church_params)
      render json: @church
    else
      render json: @church.errors, status: :unprocessable_entity
    end
  end

  # DELETE /churches/1
  def destroy
    @church.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_church
      @church = Church.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def church_params
      params.require(:church).permit(:name, :town, :county, :buildings_of_england_volume, :diocese, :archdeaconry, :latitude, :longitude, :minster_current_status, :collegiate_status, :collegiate_date, :first_mentioned_in_text, :first_mentioned_in_text_explanation, :earliest_extant_fabric_date, :earliest_extant_fabric_date_evidence, :earliest_extant_fabric_date_secured, :earliest_extant_fabric_location, :notes)
    end
end
