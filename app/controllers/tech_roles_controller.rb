class TechRolesController < ApplicationController
  before_action :set_tech_role, only: [:show, :edit, :update, :destroy]

  # GET /tech_roles
  # GET /tech_roles.json
  def index
    @tech_roles = TechRole.all
  end

  # GET /tech_roles/1
  # GET /tech_roles/1.json
  def show
  end

  # GET /tech_roles/new
  def new
    @tech_role = TechRole.new
  end

  # GET /tech_roles/1/edit
  def edit
  end

  # POST /tech_roles
  # POST /tech_roles.json
  def create
    @tech_role = TechRole.new(tech_role_params)

    respond_to do |format|
      if @tech_role.save
        format.html { redirect_to @tech_role, notice: 'Tech role was successfully created.' }
        format.json { render :show, status: :created, location: @tech_role }
      else
        format.html { render :new }
        format.json { render json: @tech_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_roles/1
  # PATCH/PUT /tech_roles/1.json
  def update
    respond_to do |format|
      if @tech_role.update(tech_role_params)
        format.html { redirect_to @tech_role, notice: 'Tech role was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_role }
      else
        format.html { render :edit }
        format.json { render json: @tech_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_roles/1
  # DELETE /tech_roles/1.json
  def destroy
    @tech_role.destroy
    respond_to do |format|
      format.html { redirect_to tech_roles_url, notice: 'Tech role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_role
      @tech_role = TechRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_role_params
      params.require(:tech_role).permit(:name, :short_name, :photo)
    end
end
