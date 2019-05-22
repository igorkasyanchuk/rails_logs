require "rails_logs/engine"

module RailsLogs

  # is enabled?
  mattr_accessor :enabled
  @@enabled = true

  # automatic engine routes mouting
  mattr_accessor :automatic_routes_mount
  @@automatic_routes_mount = true

  # Enable http basic authentication
  mattr_accessor :http_basic_authentication_enabled
  @@http_basic_authentication_enabled = false

  # Enable http basic authentication
  mattr_accessor :http_basic_authentication_user_name
  @@http_basic_authentication_user_name = 'rails_logs'

  # Enable http basic authentication
  mattr_accessor :http_basic_authentication_password
  @@http_basic_authentication_password = 'passw0))rd'

  def self.setup
    yield(self)
  end

  def self.use_default_configuration!
    self.enabled                            = true
    self.http_basic_authentication_enabled  = false
    self.automatic_routes_mount             = true
  end 
end

require "rails_logs/engine"
require "rails/routes"