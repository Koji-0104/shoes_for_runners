class Admin::ShoesController < Admin::BaseController
  before_action :set_shoe, only: %i[show edit update destroy]

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = current_user.shoes.build(shoe_params)

    if @shoe.save
      redirect_to new_admin_shoe_path, success: t('defaults.message.added', item: Shoe.model_name.human)
    else

      flash.now[:danger] = t('defaults.message.not_added', item: Shoe.model_name.human)
      render :new
    end
  end

  def index
    @q = Shoe.ransack(params[:q])
    @shoes = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  def edit; end

  def update
    if @shoe.update(shoe_params)
      redirect_to admin_shoe_path(@shoe), success: t('defaults.message.updated', item: Shoe.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: Shoe.model_name.human)
      render :edit
    end
  end

  def show; end

  def destroy
    @shoe.destroy!
    redirect_to admin_shoes_path, success: t('defaults.message.deleted', item: Shoe.model_name.human)
  end

  private

  def shoe_params
    params.require(:shoe).permit(:name, :url, :img_url, :gender, :purpose, :maker, :level)
  end

  def set_shoe
    @shoe = Shoe.find(params[:id])
  end

end
