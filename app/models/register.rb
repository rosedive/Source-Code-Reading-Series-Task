class Register < ApplicationRecord
    after_create :notify_slack

  def notify_slack
    SlackNotifier::CLIENT.ping "🎉 New user: #{firstname} 🎉"
  end
end
