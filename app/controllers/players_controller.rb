class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.all
  end

  def show
  end

  def new
    @player = Player.new
  end

  def edit
  end

  def create
    @person = Person.new(person_params)
    @person.save
    @player = Player.new(player_params)
    @player.person = @person
    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_player
      @player = Player.find(params[:id])
    end
  
    def person_params
      params.require(:person).permit(:first_name, :middle_name, :last_name, :sur_name, :sex, :identification_number, :birthdate, :phone, :mobile, :additional_phone, :email, :salary, :additional_information, :photo, :city_id)
    end

    def player_params
      params.require(:player).permit(:height, :weight, :shirt_number, :debut_date, :team_id, :position_id,
        person_attributes: [:first_name, :middle_name, :last_name, :sur_name, :sex, :identification_number, :birthdate, 
                          :phone, :mobile, :additional_phone, :email, :salary, :additional_information, :photo, :city_id])
    end
end
