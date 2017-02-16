class StandsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :upvote]
  #before_action :correct_user, only: [:edit, :update, :destroy]

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

  def upvote
    @stand = Stand.find(params[:id])
    @stand.upvote_by current_user
    redirect_to root_path
  end

  # GET /stands/new
  def new
    @stand = current_user.stands.build
  end

  # GET /stands/1/edit
  def edit
    @stand = Stand.find(params[:id])
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
    @stand = Stand.find(params[:id])
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
      params.require(:stand).permit(:title, :description, :time, :url, :action, :type_of_stand, :image, :org_description, :org_name, :status)
    end
end
