require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Circlelink
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #日本時間
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    #日本語対応
    config.i18n.default_locale = :ja
  end
end
