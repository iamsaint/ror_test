class Api::V1::ArticlesController < ApplicationController
    def index
      @models = Article.all.select('id, title, image, short_text, full_text')
      render json: @models
    end
end
