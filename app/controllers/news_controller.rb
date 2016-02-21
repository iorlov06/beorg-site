class NewsController < ApplicationController
  before_action :authenticate_user!
  def index
    @news = NewsArticle.where(info: false)
  end

  def show
    @article = NewsArticle.find(params[:id])
  end

  def create
    @article = NewsArticle.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.picture_url = params[:picture_url]
    @article.save
    redirect_to "/news/#{@article.id}"
  end

  def update
    @article = NewsArticle.find(params[:id])
    @article.title = params[:title]
    @article.description = params[:description]
    @article.picture_url = params[:picture_url]
    @article.save
    redirect_to "/news/#{@article.id}"
  end

  def new
  end

  def edit
    @article = NewsArticle.find params[:id]
  end

  def delete
    @article = NewsArticle.find params[:id]
    @article.destroy
    redirect_to "/news/archive"
  end
end
