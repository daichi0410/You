class ApplicationController < ActionController::Base
  before_action :require_login
  layout "application"

  protected

  def not_authenticated
    redirect_to login_url
  end
end
