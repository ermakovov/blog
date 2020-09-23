class ArticlesController < ApplicationController
  def index
    @articleS = Article.all
  end
  
  def new
  end

  def create
    render plain: params[:article].inspect
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
