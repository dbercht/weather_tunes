class WeathersController < ApplicationController
  skip_before_filter :login_required, :only => [:index, :show]

  def index
    @weathers = Weather.all

  end

  def show
    @weather = Weather.find(params[:id])
    session[:audio_url] = @weather.sound.url
    logger.debug ("**************************** #{session[:audio_url]}")
    respond_to do |format|
      format.html {redirect_to root_url}
      format.js  {}
    end
  end

  def new
    @weather = Weather.new
  end

  def create
    @weather = Weather.new(params[:weather])
    if @weather.save
      redirect_to(weathers_url, :notice => "Successfully created weather")
    else
      render :action => "new"
    end
  end

  def edit
    @weather = Weather.find(params[:id])
  end

  def update
    @weather = Weather.find(params[:id])
    if @weather.update_attributes(params[:weather])
      redirect_to(weathers_url, :notice => "Successfully updated weather")
    else
      render :action => 'edit'
    end
  end

  def destroy
    @weather = Weather.find(params[:id])
    @weather = @weather.destroy
  end

end
