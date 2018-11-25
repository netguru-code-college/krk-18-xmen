class ApplicationController < ActionController::Base
  private

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to root_path, notice: 'You have to log in to view this page!'
    end
  end
end
