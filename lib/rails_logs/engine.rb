module RailsLogs
  class Engine < ::Rails::Engine
    isolate_namespace RailsLogs

    initializer 'rails_logs.assets_precompile', group: :all do |app|
      app.config.assets.precompile += ['rails_logs/application.js', 'rails_logs/application.css', 'rails_logs/*.png', 'rails_logs/*.svg', 'rails_logs/*.ico']
      app.config.assets.precompile += ['rails_logs/bulma.min.css']
      app.config.assets.precompile += ['rails_logs/*.gif']
    end

  end
end
