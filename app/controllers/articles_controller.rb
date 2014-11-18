class ArticlesController < ApplicationController
  def index
    @models = Article.all
  end


  def new
    @model = Article.new
  end

  def update
    @model = Article.find params[:article]
  end

  def show
    @model = Article.find params[:id]
  end

  private

  def articles_params
    params.require(:articles).permit(:title, tags_attributes: [:id, :article_id, :name])
  end
end
