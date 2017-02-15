class CompletesController < ApplicationController
  def create
    @stand = Stand.find(params[:stand_id])
    @complete = @stand.completes.build(params[:complete].permit(:comment))
    @complete.user_id = current_user.id
    @complete.save!
    redirect_to stand_path(@stand), notice: 'Bingo! Your comment was successfully posted!'
  end
 
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def complete_params
      params.require(:complete).permit(:comment)
    end
end
