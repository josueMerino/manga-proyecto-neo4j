class CreateCreatedIn < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :CREATED_IN, :uuid
  end

  def down
    drop_constraint :CREATED_IN, :uuid
  end
end
