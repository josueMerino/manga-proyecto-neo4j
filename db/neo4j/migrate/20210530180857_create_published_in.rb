class CreatePublishedIn < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :PUBLISHED_IN, :uuid
  end

  def down
    drop_constraint :PUBLISHED_IN, :uuid
  end
end
