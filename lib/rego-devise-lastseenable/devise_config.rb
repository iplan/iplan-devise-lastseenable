module Devise
  # Interval (in minutes) to update the last_seen_at
  mattr_accessor :lastseenable_interval
  @@lastseenable_interval = 5
end
