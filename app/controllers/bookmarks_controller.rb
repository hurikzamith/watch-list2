class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
      @bookmark = Bookmark.create(bookmark_params)
      @list = List.find(params[:list_id])
      redirect_to list_path(@list)

      # render :new, status: :unprocessable_entity
    # end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end


# TODO FIX CONTROLLER
end
