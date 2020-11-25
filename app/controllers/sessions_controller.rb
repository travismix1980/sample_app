class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # log the user in and redirect to the user's show page.
      reset_session # protects against session fixation attacks
      log_in user
      redirect_to user
    else
      # create an error message and rerender login screen
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy; end
end
