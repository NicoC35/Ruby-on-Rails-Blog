class DiscussionsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret",
  only: :destroy

  def create
    @comment = Comment.find(params[:comment_id])
    @discussion = @comment.discussions.create(discussion_params)
    redirect_to comment_path(@comment)
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @discussion = @comment.discussions.find(params[:id])
    @discussion.destroy
    redirect_to comment_path(@comment)
  end
 
  private
    def discussion_params
      params.require(:discussion).permit(:topic, :discusser)
    end
end
