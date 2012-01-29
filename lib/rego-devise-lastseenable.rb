unless defined?(Devise)
  require 'devise'
end
require 'rego-devise-lastseenable'
require 'rego-devise-lastseenable/devise_config'

Devise.add_module :lastseenable, :model => 'rego-devise-lastseenable/model'

module DeviseLastseenable
end

require 'rego-devise-lastseenable/rails'
