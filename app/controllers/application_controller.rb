class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_default_search

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :dob, :role, :gender, :image, :nationality, :location)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
     u.permit(:name, :email, :password, :password_confirmation, :current_password, :first_name, :last_name, :dob, :role, :gender, :image, :nationality, :location)
    end
  end

  def set_default_search
    @q = Idea.ransack(params[:q])
    @search_field = :title_cont
  end

end
