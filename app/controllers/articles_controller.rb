class ArticlesController < ApplicationController
  def index
    @models = Articles.all
  end

  def edit
    @model = Articles.find params[:id]
  end

  def show
    @model = Articles.find params[:id]
  end
end
