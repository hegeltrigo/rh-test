class CommercialUnit < ApplicationRecord
  has_one :property, :as => :propertyable, :inverse_of => :propertyable
end
