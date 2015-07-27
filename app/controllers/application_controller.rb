class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show
    @user = User.find_by_id(params['id'])
  end
  
  def create
  end
  
  def new
    u = User.new
    u.name = params['name']
    u.email = params['email']
    u.save
    redirect_to "/store_users/#{u.id}"
  end
end
