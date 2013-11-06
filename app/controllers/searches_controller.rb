class SearchesController < ApplicationController

  def index
    @search = Search.new(params[:original_string])
      # if @search.save
      #   redirect_to @index, notice: "shit works"
      # else
      #   render action: 'index', notice: "Aw shit son, that's DEFINITELY not a hashtag!"
      # end
  end



  private

  def search_params
    params.require(:search).permit(:original_string)
  end

end
