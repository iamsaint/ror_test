class ArticlesController < ApplicationController
  def index
    @models = Article.all
  end

  def new
    @model = Article.new

    if @model.save
      redirect_to :action => 'index'
    else
      render :action => "new"
    end
  end

  def update
    @model = Article.find params[:article]
  end

  def show
    @model = Article.find params[:id]
  end

  private

  def article_params
    params.require(:articles).permit(:title)
  end
end
