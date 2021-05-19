require 'iplan-devise-lastseenable/hooks'

module Devise
  module Models
    module IplanLastseenable
      def update_lastseenable_fields!(request)
        interval = self.class.lastseenable_interval
        if self.persisted? && ((self.last_seen_at.to_i < (Time.now - interval.seconds).to_i) || (request.remote_ip != self.last_seen_ip))
          self.last_seen_at = DateTime.now
          self.last_seen_ip = request.remote_ip
          save(validate: false)
        end
      end

      module ClassMethods
        Devise::Models.config(self, :lastseenable_interval)
      end
    end
  end
end