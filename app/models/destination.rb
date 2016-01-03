class Destination
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :priority, type: Integer
  field :image_url, type: String
  field :location, type: Array
  
end
