class CompletesController < ApplicationController
  def create
    @stand = Stand.find(params[:stand_id])
    @complete = @stand.completes.create(complete_params)
    redirect_to stand_path(@stand)
  end
 
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def complete_params
      params.require(:complete).permit(:comment)
    end
end