module DestinationsHelper
	def to_geojson destination
		h={
		    type: 'Feature',
		    geometry: {
		      type: 'Point',
		      coordinates: [destination.location.first, destination.location.last]
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
