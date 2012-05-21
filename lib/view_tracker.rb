# module ViewTracker
# end

%w( controller
    helper ).each do |file|
  require File.expand_path(File.join(%w(.. view_tracker), file), __FILE__)
end

ActionController::Base.send :include, ViewTracker::Controller

require 'app/helpers/application_helper'

ApplicationHelper.send :include, ViewTracker::Helper

