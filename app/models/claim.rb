class Claim
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :claim_type, :type => String
  field :active, :type => Boolean
  field :claim_location_postcode, :type => String  
  field :cost, :type => Float
  field :date_of_loss, :type => Date
  
  embeds_many :customers
  accepts_nested_attributes_for :customers, {:allow_destroy => true,
    :reject_if => proc { |attrs|
                          attrs[:customer_name].blank? && attrs[:customer_postcode].blank? &&
                          attrs[:customer_phone].blank? && attrs[:customer_dob].blank?
                        }
    }  
end
