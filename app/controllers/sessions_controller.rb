class SessionsController < ApplicationController

  def create
    # move 5 and 6 to a named method and include it in the authentication.rb
    session[:access_token] = request.env['omniauth.auth']['credentials']['token']
    session[:access_secret] = request.env['omniauth.auth']['credentials']['secret']
    redirect_to root_path, notice: "Signed in"
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "Signed out"
  end

end
