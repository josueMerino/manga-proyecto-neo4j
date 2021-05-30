class ForceCreateComicNeoIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :Comic, :neo_id, force: true
  end

  def down
    drop_constraint :Comic, :neo_id
  end
end
