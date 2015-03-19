class LineUpSubsController < ApplicationController
  before_action :set_line_up_sub, only: [:show, :edit, :update, :destroy]

  # GET /line_up_subs
  # GET /line_up_subs.json
  def index
    @line_up_subs = LineUpSub.all
  end

  # GET /line_up_subs/1
  # GET /line_up_subs/1.json
  def show
  end

  # GET /line_up_subs/new
  def new
    @line_up_sub = LineUpSub.new
  end

  # GET /line_up_subs/1/edit
  def edit
  end

  # POST /line_up_subs
  # POST /line_up_subs.json
  def create
    @line_up_sub = LineUpSub.new(line_up_sub_params)

    respond_to do |format|
      if @line_up_sub.save
        format.html { redirect_to @line_up_sub, notice: 'Line up sub was successfully created.' }
        format.json { render :show, status: :created, location: @line_up_sub }
      else
        format.html { render :new }
        format.json { render json: @line_up_sub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_up_subs/1
  # PATCH/PUT /line_up_subs/1.json
  def update
    respond_to do |format|
      if @line_up_sub.update(line_up_sub_params)
        format.html { redirect_to @line_up_sub, notice: 'Line up sub was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_up_sub }
      else
        format.html { render :edit }
        format.json { render json: @line_up_sub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_up_subs/1
  # DELETE /line_up_subs/1.json
  def destroy
    @line_up_sub.destroy
    respond_to do |format|
      format.html { redirect_to line_up_subs_url, notice: 'Line up sub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_up_sub
      @line_up_sub = LineUpSub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_up_sub_params
      params.require(:line_up_sub).permit(:lineup_id, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7)
    end
end
