class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to new_blog_path
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end
end
