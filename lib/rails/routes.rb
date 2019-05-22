module ActionDispatch::Routing
  class Mapper
    def mount_rails_logs_routes(options = {})
      mount RailsLogs::Engine => '/rails/logs', as: (options[:as].presence || 'rails_logs')
    end
  end
end