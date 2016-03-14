class Destination
  include Mongoid::Document
  include Geocoder::Model::Mongoid
  include Mongoid::Orderable

  field :name, type: String
  field :description, type: String
  field :priority, type: Integer
  field :image_url, type: String
  field :coordinates, type: Array
  field :visited, type: Boolean, default: false

  validates :name, :uniqueness => { :case_sensitive => false }
  validates :coordinates, uniqueness: true

  geocoded_by :name                   # can also be an IP address
  after_validation :geocode           # auto-fetch coordinates
  orderable base: 1, scope: :user     # create postion field
  before_validation do |destination|
    destination.image_url=Picture.get_url(name)
  end

  belongs_to :user

  scope :visited,     -> {where(visited:true)}
  scope :non_visited, -> {where(visited:false)}

  def mark_visited
    self.visited = true
  end

  def mark_non_visited
    self.visited = false
  end
end
