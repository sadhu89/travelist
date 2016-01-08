module DestinationsHelper
	def to_geojson destination
		x=destination.coordinates.first rescue 0
		y=destination.coordinates.last rescue 0
		h={
		    type: 'Feature',
		    geometry: {
		      type: 'Point',
		      coordinates: [x, y]
		    },
		    properties: {
		      name: destination.name,
		      title: destination.name,
		      description: destination.description,
		      :'marker-color' => '#00607d',
		      :'marker-symbol' => 'circle',
		      :'marker-size' => 'medium'
		    }
		}
		"#{h.to_json}".html_safe 
	end
end
