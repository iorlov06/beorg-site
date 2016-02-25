class InfoController < ApplicationController
  # before_action :authenticate_user!
  def index
    @news = NewsArticle.where.not(info: true).last(3)
    #5 отзывов
    review_shuffle = Review.pluck(:id).take(5)
    @reviews = Review.where(id: review_shuffle)
    @about = NewsArticle.find_or_create_by(info: true, title: 'About us')
  end

  def about
    @about = NewsArticle.find_or_create_by(info: true, title: 'About us')

  end

  def manage_about
    @about = NewsArticle.find_or_create_by(info: true, title: 'About us')
  end

  def save_about
    @about = NewsArticle.find_or_create_by(info: true, title: 'About us')
    if current_user && current_user.role > 0
      @about.update(description: params[:description])
    end
    render :text=>'<script type="text/javascript"> window.close();</script>'
  end


end
