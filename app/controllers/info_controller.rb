class InfoController < ApplicationController
  # before_action :authenticate_user!
  def index
    @news = NewsArticle.last(3)
    #5 отзывов
    review_shuffle = Review.pluck(:id).take(5)
    @reviews = Review.where(id: review_shuffle)
  end
end
