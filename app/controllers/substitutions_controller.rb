class SubstitutionsController < ApplicationController
  before_action :set_substitution, only: [:show, :edit, :update, :destroy]

  # GET /substitutions
  # GET /substitutions.json
  def index
    @substitutions = Substitution.all
  end

  # GET /substitutions/1
  # GET /substitutions/1.json
  def show
  end

  # GET /substitutions/new
  def new
    @substitution = Substitution.new
  end

  # GET /substitutions/1/edit
  def edit
  end

  # POST /substitutions
  # POST /substitutions.json
  def create
    @substitution = Substitution.new(substitution_params)

    respond_to do |format|
      if @substitution.save
        format.html { redirect_to @substitution, notice: 'Substitution was successfully created.' }
        format.json { render :show, status: :created, location: @substitution }
      else
        format.html { render :new }
        format.json { render json: @substitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /substitutions/1
  # PATCH/PUT /substitutions/1.json
  def update
    respond_to do |format|
      if @substitution.update(substitution_params)
        format.html { redirect_to @substitution, notice: 'Substitution was successfully updated.' }
        format.json { render :show, status: :ok, location: @substitution }
      else
        format.html { render :edit }
        format.json { render json: @substitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /substitutions/1
  # DELETE /substitutions/1.json
  def destroy
    @substitution.destroy
    respond_to do |format|
      format.html { redirect_to substitutions_url, notice: 'Substitution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_substitution
      @substitution = Substitution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def substitution_params
      params.require(:substitution).permit(:time, :player_in, :player_out, :game_id, :team_id)
    end
end
