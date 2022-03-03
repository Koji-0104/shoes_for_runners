class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end
  def show
    @shoe = Shoe.find(params[:id])
    @comment = Comment.new
    @comments = @shoe.comments.includes(:user).order(created_at: :desc)
  end

  private

  def find_shoe
    @shoe = current_user.shoes.find(params[:id])
  end

  def shoe_params
    params.require(:shoe).permit(:name, :url, :img_url)
  end
end
