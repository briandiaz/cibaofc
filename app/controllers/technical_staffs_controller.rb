class TechnicalStaffsController < ApplicationController
  before_action :set_technical_staff, only: [:show, :edit, :update, :destroy]

  # GET /technical_staffs
  # GET /technical_staffs.json
  def index
    @technical_staffs = TechnicalStaff.all
  end

  # GET /technical_staffs/1
  # GET /technical_staffs/1.json
  def show
  end

  # GET /technical_staffs/new
  def new
    @technical_staff = TechnicalStaff.new
  end

  # GET /technical_staffs/1/edit
  def edit
  end

  # POST /technical_staffs
  # POST /technical_staffs.json
  def create
    @technical_staff = TechnicalStaff.new(technical_staff_params)

    respond_to do |format|
      if @technical_staff.save
        format.html { redirect_to @technical_staff, notice: 'Technical staff was successfully created.' }
        format.json { render :show, status: :created, location: @technical_staff }
      else
        format.html { render :new }
        format.json { render json: @technical_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technical_staffs/1
  # PATCH/PUT /technical_staffs/1.json
  def update
    respond_to do |format|
      if @technical_staff.update(technical_staff_params)
        format.html { redirect_to @technical_staff, notice: 'Technical staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @technical_staff }
      else
        format.html { render :edit }
        format.json { render json: @technical_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technical_staffs/1
  # DELETE /technical_staffs/1.json
  def destroy
    @technical_staff.destroy
    respond_to do |format|
      format.html { redirect_to technical_staffs_url, notice: 'Technical staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technical_staff
      @technical_staff = TechnicalStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technical_staff_params
      params.require(:technical_staff).permit(:person_id, :team_id, :team_id, :tech_role_id)
    end
end
