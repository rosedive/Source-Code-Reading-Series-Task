
require 'slack-notifier'
require 'clockwork'

# You will be able to use a method to indicate time, such as minutes, if you require the gem below, so it is recommended to write it.

require 'active_support/time'

module Clockwork
  handler do |send|
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
    notifier.ping('Hello friend!!!!!')
  end
  every(3.seconds, 'send')
end
