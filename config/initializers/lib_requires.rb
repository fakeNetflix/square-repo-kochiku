# Require the files in lib that need to be loaded here
require "#{Rails.root}/lib/build_strategies/#{Rails.env}_build_strategy"
require "#{Rails.root}/lib/resque_queue_helper"