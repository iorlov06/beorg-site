class UsersController < ApplicationController
  before_action :authenticate_user!
  def cabinet
    @orders = current_user.orders
  end
  def edit
  end

  def update
    current_user.username = params[:username] if params[:username]
    current_user.phone = params[:phone] if params[:phone]
    current_user.email = params[:email] if params[:email]
    current_user.firstname = params[:firstname] if params[:firstname]
    current_user.partonym = params[:partonym] if params[:partonym]
    current_user.lastname = params[:lastname] if params[:lastname]
    current_user.save
    redirect_to '/cabinet'
  end
end
