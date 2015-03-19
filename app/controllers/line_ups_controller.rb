class LineUpsController < ApplicationController
  before_action :set_line_up, only: [:show, :edit, :update, :destroy]

  # GET /line_ups
  # GET /line_ups.json
  def index
    @line_ups = LineUp.all
  end

  # GET /line_ups/1
  # GET /line_ups/1.json
  def show
  end

  # GET /line_ups/new
  def new
    @line_up = LineUp.new
  end

  # GET /line_ups/1/edit
  def edit
  end

  # POST /line_ups
  # POST /line_ups.json
  def create
    @line_up = LineUp.new(line_up_params)

    respond_to do |format|
      if @line_up.save
        format.html { redirect_to @line_up, notice: 'Line up was successfully created.' }
        format.json { render :show, status: :created, location: @line_up }
      else
        format.html { render :new }
        format.json { render json: @line_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_ups/1
  # PATCH/PUT /line_ups/1.json
  def update
    respond_to do |format|
      if @line_up.update(line_up_params)
        format.html { redirect_to @line_up, notice: 'Line up was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_up }
      else
        format.html { render :edit }
        format.json { render json: @line_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_ups/1
  # DELETE /line_ups/1.json
  def destroy
    @line_up.destroy
    respond_to do |format|
      format.html { redirect_to line_ups_url, notice: 'Line up was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_up
      @line_up = LineUp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_up_params
      params.require(:line_up).permit(:game_id, :team_id, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :player_11)
    end
end
