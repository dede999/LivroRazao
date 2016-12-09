class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  module I18nTest
    class Application < Rails::Application
      config.i18n.default_locale = 'pt'
      config.time_zone = 'Brazil'
    end
  end
end
