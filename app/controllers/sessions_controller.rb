class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user
      if user.authenticate(params[:password])
        session[:login] = user.id
        redirect_to root_url, notice: "SIGNED IN"
      else
        redirect_to root_url, notice: "Bad Password"
      end
    else
      redirect_to root_url, notice: "Bad Sign In"
    end
  end

  def destroy
    session[:login] = nil
    flash[:notice] = "Peace Out"
    redirect_to root_url
  end
end
