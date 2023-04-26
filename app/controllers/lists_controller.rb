class ListsController < ApplicationController

  def index
    @lists = List.all
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
      if @list.save
        redirect_to list_path(@list)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def list_params
    params.require(:list).permit(:name)
  end

end
