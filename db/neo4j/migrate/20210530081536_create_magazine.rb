class CreateMagazine < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :Magazine, :uuid
  end

  def down
    drop_constraint :Magazine, :uuid
  end
end
