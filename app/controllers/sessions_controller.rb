class SessionsController < ApplicationController

  def create
    p '#'*60
    p session
    session[:access_token] = request.env['omniauth.auth']['credentials']['token']
    session[:access_secret] = request.env['omniauth.auth']['credentials']['secret']
    redirect_to show_path, notice: "Signed in"
  end

  def show
    if session['access_token'] && session['access_secret']
      @user = client.user(include_entities: true)
      @photos = Photo.all
      render :template => 'photos/index'
    else
      redirect_to failure_path
    end
  end

  def error
    flash[:error] = "Sign in with Twitter failed"
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "Signed out"
  end

end