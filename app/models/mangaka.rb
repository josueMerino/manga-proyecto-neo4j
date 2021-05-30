class Mangaka 
  include ActiveGraph::Node
  id_property :neo_id
  property :name, type: String
  property :image, type: String



end
