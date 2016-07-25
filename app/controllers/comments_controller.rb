class CommentsController < ApplicationController
  def new
    comment = Comment.new
  end

  def create
    comment = Comment.new(comment_params)
    comment.article_id = params[:article_id]
    comment.save
    redirect_to article_path(comment.article), 
                locals: { comment: comment,
                          article: comment.article }
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:author,:body)
    end


end
