class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    
    flash.notice = "Comment Submitted!"
    
    redirect_to article_path(@comment.article)
  end
  
  def comment_params
    params.require(:comment).permit(:outher_name, :body)
end
