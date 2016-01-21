class NewsController < ApplicationController
  # before_action :authenticate_user!
  def get
    @article = NewsArticle.find(params[:id])
  end
end
