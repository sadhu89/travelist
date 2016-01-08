module Picture
  include HTTParty
  
  base_uri 'https://api.500px.com/v1/photos/search'
  default_params consumer_key: "g7dOnHfBDapHBrdAW81Tr7wHBlK5v9cy9iPdLOsU", rpp:1, only:"travel,landscapes", sort:"highest_rating",image_size: 600
  format :json

  def self.get_url term
    get("", query: {tag: term})["photos"][0]["image_url"]
  end

end
