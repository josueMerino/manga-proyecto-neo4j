class ForceCreateMagazineNeoIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :Magazine, :neo_id, force: true
  end

  def down
    drop_constraint :Magazine, :neo_id
  end
end
