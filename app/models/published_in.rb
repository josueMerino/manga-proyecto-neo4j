class PublishedIn 
  include ActiveGraph::Relationship

  from_class :Comic
  to_class :Magazine
  type :PUBLISHED_IN

  property :publish_date, type: Date



end
