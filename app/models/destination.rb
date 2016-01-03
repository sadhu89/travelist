class Destination
  include Mongoid::Document
  include Geocoder::Model::Mongoid
  field :name, type: String
  field :description, type: String
  field :priority, type: Integer
  field :image_url, type: String
  field :coordinates, type: Array
  field :location, type: Array
  geocoded_by :name               # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

end
