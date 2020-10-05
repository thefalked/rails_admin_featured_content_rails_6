require 'simple_form'
require 'owlcarousel-rails'

module RailsAdminFeaturedContentRails6
  class Engine < ::Rails::Engine
    isolate_namespace RailsAdminFeaturedContentRails6

    initializer 'rails_admin_featured_content.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"

      app.config.assets.precompile += %w(
        rails_admin/featured_content.js
        rails_admin/featured_content.css
      )
    end

    config.generators do |g|
      g.assets false
      g.helper false
    end
  end
end
