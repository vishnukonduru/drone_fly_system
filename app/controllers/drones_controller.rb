class DronesController < ApplicationController
  before_action :set_drone, only: %i[ show edit update destroy take_off move status land]

  # GET /drones or /drones.json
  def index
    @drones = Drone.all
  end

  # GET /drones/1 or /drones/1.json
  def show
  end

  # GET /drones/new
  def new
    @drone = Drone.new
  end

  # GET /drones/1/edit
  def edit
  end

  # POST /drones or /drones.json
  def create
    @drone = Drone.new(drone_params)

    respond_to do |format|
      if @drone.save
        format.html { redirect_to @drone, notice: "Drone was successfully created." }
        format.json { render :show, status: :created, location: @drone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @drone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drones/1 or /drones/1.json
  def update
    respond_to do |format|
      if @drone.update(drone_params)
        format.html { redirect_to @drone, notice: "Drone was successfully updated." }
        format.json { render :show, status: :ok, location: @drone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @drone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drones/1 or /drones/1.json
  def destroy
    @drone.destroy
    respond_to do |format|
      format.html { redirect_to drones_url, notice: "Drone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def take_off
    if @drone.update(status: 'hovering')
      redirect_to @drone, notice: 'Drone Take off'
    end
  end

  def move
    if @drone.update(position: params[:position].to_s, status: 'moving')
      redirect_to @drone, notice: "Drone is now moving in position #{params[:position]}"
    end
  end

  def land
    if @drone.update(status: 'off')
      redirect_to @drone, notice: 'Drone Land'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drone
      @drone = Drone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def drone_params
      params.fetch(:drone, {}).permit(:name)
    end
end
