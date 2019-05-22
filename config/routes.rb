RailsLogs::Engine.routes.draw do
  root to: 'home#index'
end

if RailsLogs.automatic_routes_mount
  Rails.application.routes.draw do
    mount_rails_logs_routes
  end
end