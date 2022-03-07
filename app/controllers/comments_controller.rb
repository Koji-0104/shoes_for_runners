class CommentsController < ApplicationController
  before_action :require_login

  def create
    comment = current_user.comments.build(comment_params)
    if comment.save
      redirect_to shoe_path(comment.shoe), success: t('defaults.message.created', item: Comment.model_name.human)
    else
      redirect_to shoe_path(comment.shoe), danger: t('defaults.message.not_created', item: Comment.model_name.human)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(shoe_id: params[:shoe_id])
  end

  private
    def not_authenticated
      flash[:warning] = t('defaults.message.require_login')
      redirect_to login_path
    end
end
