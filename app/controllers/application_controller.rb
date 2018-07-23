class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  rescue
    redirect_to 'https://www.facebook.com/'
  end


  def sign_in_admin(admin)
    session[:admin_id] = admin.id
  end

  def current_admin
    @current_admin ||= AdminUser.find_by(id: session[:admin_id]) if session[:admin_id]
  end
  helper_method :current_admin

  def authenticate_admin_login
    unless current_admin
      redirect_to 'https://www.facebook.com/'
    end
  end

end
