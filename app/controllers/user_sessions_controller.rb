class UserSessionsController < ApplicationController
  skip_before_filter :login_required, :only => [:new, :create]
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to_target_or_default root_url, :notice => "Logged in successfully."
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to root_url, :notice => "You have been logged out."
  end
end
