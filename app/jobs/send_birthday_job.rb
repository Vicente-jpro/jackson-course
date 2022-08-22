class SendBirthdayJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    UserMailer.birthday(user_id).deliver_now
  end
end
