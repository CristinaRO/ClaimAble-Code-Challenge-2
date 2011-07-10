class Customer
  include Mongoid::Document

  field :customer_name, :type => String
  field :customer_postcode, :type => String
  field :customer_phone, :type => String
  field :customer_dob, :type => Date
  
  embedded_in :claim
end
