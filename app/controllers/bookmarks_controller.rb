class BookmarksController < ApplicationController
  def create
    @shoe = Shoe.find(params[:shoe_id])
    current_user.bookmark(@shoe)
  end

  def destroy
    @shoe = current_user.bookmarks.find(params[:id]).shoe
    current_user.unbookmark(@shoe)
  end
end
