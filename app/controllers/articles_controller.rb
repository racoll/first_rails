class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id]) # we usa an instance variable to hold a reference to the article object
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    # params array containing either get or post request variables, .inspect just shows you the structure.
    # referring to the class named Article defined in app/models/article.rb
    @article.save
    redirect_to @article

  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
  # The params method is the object which represents the parameters (or fields) coming in from the form

end
