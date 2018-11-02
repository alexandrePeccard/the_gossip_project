class CommentsController < ApplicationController
  respond_to :html, :json

  def new
    @comment = Comment.new
    respond_modal_with @comment
  end

  def create
    puts params['gossip_id']
    @comment = Comment.create(content: params[:comment][:content], gossip_id: params['gossip_id'], user_id: params['user_id'])
    @comment.save
    redirect_to "/gossips/#{params['gossip_id']}"
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content)
  end
end