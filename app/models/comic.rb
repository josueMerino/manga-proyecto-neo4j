class Comic 
  include ActiveGraph::Node
  id_property :neo_id
  property :name, type: String
  property :image, type: String
  property :sinopsis, type: String
  property :generos, type: String
  property :is_active, type: Integer



end
