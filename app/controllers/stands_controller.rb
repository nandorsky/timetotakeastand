class StandsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /stands
  # GET /stands.json
  def index
    @stands = Stand.all
  end

  # GET /stands/1
  # GET /stands/1.json
  def show
    @stand = Stand.find(params[:id])
  end

  # GET /stands/new
  def new
    @stand = current_user.stands.build
  end

  # GET /stands/1/edit
  def edit
  end

  def create
    @stand = current_user.stands.build(stand_params)
    if @stand.save
      redirect_to @stand, notice: 'Stand was successfully created.'
    else
      render :new
    end
  end

  def update
    if @stand.update(stand_params)
      redirect_to @stand, notice: 'Stand was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /stands/1
  # DELETE /stands/1.json
  def destroy
    @stand.destroy
    redirect_to stands_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stand
      @stand = Stand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stand_params
      params.require(:stand).permit(:title)
    end
end
