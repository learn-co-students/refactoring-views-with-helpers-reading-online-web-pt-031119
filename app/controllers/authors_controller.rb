class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(@author).permit(:name, :genre, :bio)
  end 
end
