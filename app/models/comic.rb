class Comic 
  include ActiveGraph::Node
  property :name, type: String
  property :image, type: String
  property :sinopsis, type: String
  property :generos, type: String
  property :is_active, type: Integer
  property :publish_date, type: Date



end
