module Api
    module V1
      class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  # GET /articles
  def index
    articles = Article.all

    render json: articles
  end

  # GET /articles/1
  def show
    render json: @rticle
  end

  # POST /articles
  def create
    article = Article.new(article_params)
    if article.name=='claraa'
        render json: {status: 'EXIST', message:'Saved article', data:article},status: :ok
    else
        if article.save
          render json: {status: 'SUCCESS', message:'Saved article', data:article},status: :ok
        else
          render json: {status: 'ERROR', message:'Article not saved', data:article.errors},status: :unprocessable_entity
        end
    end
 end

  # PATCH/PUT /articles/1
  def update
    if article.update(article_params)
      render json: article
    else
      render json: article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    article.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:name, :email, :password)
    end
end

    end
  end
   