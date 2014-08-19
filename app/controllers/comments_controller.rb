class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def edit
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to @comment.article, notice: 'Comment was successfully created.'
  end

  def update
    @comment.update(comment_params)
    redirect_to @comment.article, notice: 'Comment was successfully updated.'
  end

  def destroy
    @article = @comment.article
    @comment.destroy
    redirect_to @article, notice: 'Comment was successfully destroyed.'
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:article_id, :body)
  end
end
