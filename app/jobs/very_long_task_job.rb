class VeryLongTaskJob < ApplicationJob
  queue_as :default

  def perform(owner,buyer)
   
    sleep 60
    puts "Send email to #{owner.email}"
    puts "send email to #{buyer.email}"
    true # cause the task did complete correctly
  end
end
