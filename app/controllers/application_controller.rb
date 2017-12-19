class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :redirect_subdomain

  def redirect_subdomain
    if request.host == 'www.webuyanystairlift.org.uk'
      redirect_to 'http://webuyanystairlift.org.uk' + request.fullpath, :status => 301
    end
  end
end
