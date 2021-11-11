
 var SLACK_WEBHOOK_URL = "https://hooks.slack.com/services/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"

 class SendSlackNotificationJob < ApplicationJob
    def perform(message)
      return unless ENV[SLACK_WEBHOOK_URL].present?
    
      HTTParty.post(
        ENV[SLACK_WEBHOOK_URL],
        body: {
            message: message
        }.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )
    end
  end