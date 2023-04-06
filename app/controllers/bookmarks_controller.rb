class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end
end
