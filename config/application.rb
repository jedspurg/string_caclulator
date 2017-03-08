require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StringCalculator
  class Application < Rails::Application
    config.eager_load_paths += Dir["#{config.root}/app/services/**/"]
  end
end
