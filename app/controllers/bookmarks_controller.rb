class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = @bookmark.list
  end

  def create
    @bookmark = Bookmark.new(params)
    @list = @bookmark.list
    if @bookmark.save!
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

# TODO FIX CONTROLLER 
end
