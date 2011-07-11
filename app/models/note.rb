class Note
  include Mongoid::Document
  include Mongoid::Timestamps

  field :author_name, :type => String
  field :body_text, :type => String
  
  embedded_in :claim
end
