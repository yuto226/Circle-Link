class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => 'admin', :password => 'circlelink' if Rails.env == "production"
  protect_from_forgery with: :exception
def after_sign_in_path_for resource
  admins_index_path
end
end
