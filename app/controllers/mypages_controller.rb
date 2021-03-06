class MypagesController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to mypage_path, success: t('defaults.message.updated_user', item: User.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated_user', item: User.model_name.human)
      render :edit
    end
  end

  def show; end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :name)
  end
end
