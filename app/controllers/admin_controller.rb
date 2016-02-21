class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def manage_role
    @user = User.find(params[:id].to_i)
    @role = params[:role].to_i
    if current_user.role > 0 && current_user.role > @user.role
      @user.update(role: @role)
    end
    redirect_to :back
  end

  def search
    @users = User.all
    @users = @users.where(username: params[:username]) if (params[:username] && !params[:username].empty?)
    @users = @users.where(email: params[:email]) if (params[:email] && !params[:email].empty?)
    @users = @users.where(phone: params[:phone]) if (params[:phone] && !params[:phone].empty?)
    if (params[:name] && !params[:name].empty?)
      @users = @users.where('lower(concat(firstname, \' \', partonym, \' \', lastname)) LIKE ?', "%#{params[:name].downcase}%")
    end
  end
end
