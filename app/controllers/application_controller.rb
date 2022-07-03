class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_locale
    before_action :set_variables


  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  private

  def default_url_options
    { locale: I18n.locale }
  end
  def set_variables
    @carousel_active = CarouselActive.all
    @carousel = Carousel.all
  end



  protected
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
