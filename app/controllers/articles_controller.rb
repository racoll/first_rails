class ArticlesController < ApplicationController

  def new
  end

  def create
    render plain: params[:article].inspect  # params array containing either get or post request variables, .inspect just shows you the structure.
  end
  # The params method is the object which represents the parameters (or fields) coming in from the form

end
