class ReviewsController < ApplicationController
  # before_action :authenticate_user!
  def add
    @review = Review.find_or_create_by(user_id: current_user.id)
    #TODO: is to_i just fine for checking?
    @review.update(descripton: params[:descripton], mark: params[:mark].to_i)
    redirect_to '/'
  end

  def delete
    #удаляет отзыв пользователя,возможно можно сделать лучше
    if current_user.id == params[:user_id].to_i
      Review.destroy(current_user.review.id)
    end
    redirect_to '/'
  end
end
