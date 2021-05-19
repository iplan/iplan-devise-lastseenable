# iplan-devise-lastseenable

Ensure that devise will update a last_seen_at flag on the model whenever user is authed.

# Usage

Generate migration that adds `:last_seen_at column` to your model using generator:

    rails g devise_lastseenable User

Or add migration manually:

    class DeviseAddLastseenableAccount < ActiveRecord::Migration
      def change
        add_column :accounts, :last_seen_at, :datetime
        add_column :accounts, :last_seen_ip, :string
      end
    end


In your model, add `:lastseenable` as such:

    class User < ActiveRecord::Base

      devise ..., :iplan_lastseenable

    end


In devise.rb you can configure `lastseenable_interval` parameter (defaults to 5 minutes), which defines the interval (in minutes) to update `last_seent_at` attribute of your model:

    # Configure lastseenable interval to update last_seen_at every two minutes
    config.lastseenable_interval = 2.minutes


# Release notes

* 0.1.0 - first release

# Contributing to iplan-devise-lastseenable

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

# Copyright

Copyright (c) 2011 Alex Tkachev. See LICENSE.txt for
further details.
