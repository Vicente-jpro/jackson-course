class ExampleJob < ApplicationJob
  queue_as :default

  def perform
    puts "My job is running..."
  end
end
