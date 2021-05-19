unless defined?(Devise)
  require 'devise'
end
require 'iplan-devise-lastseenable/devise_config'

class Engine < ::Rails::Engine
  config.autoload_paths << File.dirname(__FILE__)

  initializer 'devise-lastseeenable.dependencies' do
    %w(hooks model).each do |file_name|
      require "iplan-devise-lastseenable/#{file_name}"
    end
  end
end


Devise.add_module :iplan_lastseenable, :model => 'iplan-devise-lastseenable/model'
