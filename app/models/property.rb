class Property < ApplicationRecord
  belongs_to :user #owner user
  belongs_to :buyer, :class_name => 'User', foreign_key: :buyer_id,  optional: true

  belongs_to :propertyable, polymorphic: true

  after_save :send_message_to_users

  has_many_attached :images

  rails_admin do
    configure :propertyable do
      # configuration here
    end
  end


  def send_message_to_users
    VeryLongTaskJob.perform_later(self.user, self.buyer) if (self.buyer_id != nil)
  end 

end
