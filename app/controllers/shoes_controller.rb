class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end
  def show
    @shoe = Shoe.find(params[:id])
    @comment = Comment.new
    @comments = @shoe.comments.includes(:user).order(created_at: :desc)
  end
end
