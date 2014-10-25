require 'mixpanel-ruby'

::Tracker = Mixpanel::Tracker.new(ENV["MIXPANEL_PROJECT_ID"])
