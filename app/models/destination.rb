class Destination
  include Mongoid::Document
  field :name, type: String
  field :priority, type: Integer
  field :image_url, type: String
end
