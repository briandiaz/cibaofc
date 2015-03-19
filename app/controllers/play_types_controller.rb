class PlayTypesController < ApplicationController
  before_action :set_play_type, only: [:show, :edit, :update, :destroy]

  # GET /play_types
  # GET /play_types.json
  def index
    @play_types = PlayType.all
  end

  # GET /play_types/1
  # GET /play_types/1.json
  def show
  end

  # GET /play_types/new
  def new
    @play_type = PlayType.new
  end

  # GET /play_types/1/edit
  def edit
  end

  # POST /play_types
  # POST /play_types.json
  def create
    @play_type = PlayType.new(play_type_params)

    respond_to do |format|
      if @play_type.save
        format.html { redirect_to @play_type, notice: 'Play type was successfully created.' }
        format.json { render :show, status: :created, location: @play_type }
      else
        format.html { render :new }
        format.json { render json: @play_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /play_types/1
  # PATCH/PUT /play_types/1.json
  def update
    respond_to do |format|
      if @play_type.update(play_type_params)
        format.html { redirect_to @play_type, notice: 'Play type was successfully updated.' }
        format.json { render :show, status: :ok, location: @play_type }
      else
        format.html { render :edit }
        format.json { render json: @play_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_types/1
  # DELETE /play_types/1.json
  def destroy
    @play_type.destroy
    respond_to do |format|
      format.html { redirect_to play_types_url, notice: 'Play type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play_type
      @play_type = PlayType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def play_type_params
      params.require(:play_type).permit(:name)
    end
end
