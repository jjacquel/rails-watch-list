class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
    # @list.bookmark
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    if @bookmark.save
      flash[:success] = "Movie added to list."
      redirect_to @list
    else
      flash[:alert] = "Something went wrong."
      render 'new'
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    # @bookmark.list = @list

    flash[:success] = " #{@bookmark.movie.title} has been removed from #{@bookmark.list.name} list!"
    #  how to make 'MOVIE' change into @bookmark.movie.title?

    @bookmark.destroy
    redirect_to @bookmark.list

  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end


end
