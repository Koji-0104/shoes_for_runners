class CommentsController < ApplicationController
  before_action :require_login

  def create
    comment = current_user.comments.build(comment_params)
    if comment.save
      redirect_to shoe_path(comment.shoe), success: t('defaults.message.created', item: Comment.model_name.human)
    else
      redirect_to shoe_path(comment.shoe), danger: t('defaults.message.not_created_comment', item: Comment.model_name.human)
    end
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy!
  end

  def update
    @comment = current_user.comments.find(params[:id])
    if @comment.update(comment_update_params)
      render json: { comment: @comment }, status: :ok
    else
      render json: { comment: @comment, errors: { messages: @comment.errors.full_messages } }, status: :bad_request
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(shoe_id: params[:shoe_id])
  end

  def comment_update_params
    params.require(:comment).permit(:body)
  end

  def not_authenticated
    flash[:warning] = t('defaults.message.require_login')
    redirect_to login_path
  end
end
