class CreatedIn 
  include ActiveGraph::Relationship

  from_class :Mangaka
  to_class :Comic
  type :CREATED_IN

end
