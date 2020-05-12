class WelcomeController < ApplicationController
  def index
    @properties = Property.where(buyer_id: nil)
  end

  def buy  
  end
end
