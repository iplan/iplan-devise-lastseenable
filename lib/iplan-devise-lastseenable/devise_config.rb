module Devise
  # Interval (in seconds) to update the last_seen_at
  mattr_accessor :lastseenable_interval
  @@lastseenable_interval = 5.minutes
end
