class DiscussionsController < ApplicationController
  def create
    @comment = Comment.find(params[:comment_id])
    @discussion = @comment.discussions.create(discussion_params)
    redirect_to comment_path(@comment)
  end
 
  private
    def discussion_params
      params.require(:discussion).permit(:topic, :discusser)
    end
end
